import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;
import 'package:args/args.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:recase/recase.dart';

final ArgParser argParser = new ArgParser()
  ..addOption('tree',
      help: 'The Git source tree to download the spec from.',
      defaultsTo: 'master');

main(List<String> args) async {
  try {
    var argResults = argParser.parse(args);
    String specContents;
    var specFile = new io.File.fromUri(io.Platform.script.resolve('spec.json'));

    if (!await specFile.exists()) {
      var tree = argResults['tree'];
      var browser = await downloadSpec('browser', tree);
      var js = await downloadSpec('js', tree);
      browser['domains'].insertAll(0, js['domains']);
      await specFile.writeAsString(json.encode(browser));
    }

    specContents = await specFile.readAsString();
    var spec = json.decode(specContents);
    var lib = new Library(generateFromSpec(spec));
    var emitter = new DartEmitter();
    var dart = lib.accept(emitter).toString();

    try {
      dart = new DartFormatter().format(dart);
    } on FormatterException catch (e) {
      io.stderr..writeln('Formatting error:')..writeln(e.message(color: true));
    }
    var dartFile =
        new io.File.fromUri(io.Platform.script.resolve('../lib/src/spec.dart'));
    await dartFile.create(recursive: true);
    await dartFile.writeAsString(dart);
  } on ArgParserException catch (e) {
    io.stderr..writeln(e.message)..writeln(argParser.usage);
  }
}

Future<Map> downloadSpec(String name, String tree) async {
  var client = new io.HttpClient();
  var url =
      'https://github.com/ChromeDevTools/devtools-protocol/raw/$tree/json/${name}_protocol.json';
  var rq = await client.openUrl('GET', Uri.parse(url));
  var rs = await rq.close();
  await client.close();
  return (await rs.transform(utf8.decoder).join().then(json.decode)) as Map;
}

void Function(LibraryBuilder) generateFromSpec(Map spec) {
  return (lib) {
    lib
      ..directives.addAll([
        new Directive.import(
          'dart:async',
          as: 'dart_async',
        ),
        new Directive.import(
          'package:json_rpc_2/json_rpc_2.dart',
          as: 'json_rpc_2',
        ),
      ])
      ..body.addAll([
        new Code('\n// AUTO-GENERATED. DO NOT MODIFY BY HAND.\n'),
        new Code('//\n'),
        new Code(
            '// Chrome DevTools Protocol v${spec['version']['major']}.${spec['version']['minor']}\n\n'),
      ]);

    var ctx = new Ctx();
    for (Map domain in spec['domains']) {
      // Register a domain
      var domainName = domain['domain'];
      ctx.domains[domainName] = new Domain(domainName, domain);
    }

    for (String domainName in ctx.domains.keys) {
      var d = ctx.domains[domainName];
      var domain = d.unparsed;

      // Map/generate all types
      if (domain.containsKey('types')) {
        for (Map type in domain['types']) {
          d.types[type['id']] = stringifyType(mapToType(type, d, ctx, lib));
        }
      }
    }

    for (String domainName in ctx.domains.keys) {
      var d = ctx.domains[domainName];
      var domain = d.unparsed;

      // Populate all types
      while (d.classes.isNotEmpty) {
        var clazz = d.classes.removeLast();
        var spec = domain['types'].firstWhere((Map m) => m['id'] == clazz.name);

        var updatedClazz = clazz.rebuild((classBuilder) {
          if (spec.containsKey('properties')) {
            // Generate constructor
            classBuilder.constructors.add(new Constructor((b) {
              b
                ..requiredParameters.add(
                  new Parameter((b) {
                    b
                      ..name = 'map'
                      ..type = new Reference('Map');
                  }),
                )
                ..body = new Block((b) {
                  // Simultaneously, generate property fields
                  for (Map prop in spec['properties']) {
                    // Gen the field
                    classBuilder.fields.add(new Field((fieldBuilder) {
                      fieldBuilder
                        ..name = dartEscape(prop['name'])
                        ..docs.add('/** ${prop['description'] ?? ''} */')
                        ..type = mapToReference(prop, d, ctx);

                      // Add deserialization logic
                      deserializeFrom(fieldBuilder.name, fieldBuilder.type,
                          'map', d, b, ctx);

                      // Generate enum, if any
                      if (prop.containsKey('enum')) {
                        lib.body.add(new Class((b) {
                          b
                            ..name = '${d.name}${classBuilder.name}'
                                '${new ReCase(fieldBuilder.name).pascalCase}'
                                'Enum'
                            ..abstract = true
                            ..docs.add('/// All possible values of '
                                '${d.name}.${spec['id']}.${prop['name']}.');

                          for (var value in prop['enum']) {
                            if (value is String) {
                              var rc = new ReCase(value);
                              b.fields.add(
                                new Field((b) {
                                  b
                                    ..name = dartEscape(rc.camelCase)
                                    ..static = true
                                    ..modifier = FieldModifier.constant
                                    ..assignment = new Code("'$value'");
                                }),
                              );
                            }
                          }
                        }));
                      }
                    }));
                  }
                });
            }));
          } else {
            // Generate default constructor
            classBuilder.constructors.add(new Constructor((b) {
              b.requiredParameters.add(
                new Parameter((b) {
                  b..name = '_';
                }),
              );
            }));
          }
        });

        lib.body
          ..remove(clazz)
          ..add(updatedClazz);
      }

      if (domain.containsKey('types')) {
        for (Map type in domain['types']) {
          d.types[type['id']] = stringifyType(mapToType(type, d, ctx, lib));
        }
      }
    }

    lib.body.add(generateMixinClass(ctx, lib));
  };
}

Class generateDomainClass(Map domain) {
  return new Class((builder) {
    var rc = new ReCase(domain['domain']);
    builder..name = rc.pascalCase;
  });
}

const String chromeDevToolsBase = 'ChromeDevToolsBase';
final RegExp _caps = new RegExp(r'^[A-Z]+$');

Class generateMixinClass(Ctx ctx, LibraryBuilder lib) {
  return new Class((mixinBuilder) {
    List<Code> assignments = [];

    // Add listen()
    mixinBuilder.methods.add(new Method((b) {
      b
        ..name = 'listen'
        ..returns = new Reference('void')
        ..body = new Block((b) {
          for (String domainName in ctx.domains.keys) {
            var d = ctx.domains[domainName];
            var rc = new ReCase('DevTools${d.name}');
            b.statements.add(new Code('_${rc.camelCase}.listen(rpc);'));
          }
        });
    }));

    // Add close()
    mixinBuilder.methods.add(new Method((b) {
      b
        ..name = 'close'
        ..modifier = MethodModifier.async
        ..returns = new Reference('dart_async.Future')
        ..body = new Block((b) {
          for (String domainName in ctx.domains.keys) {
            var d = ctx.domains[domainName];
            var rc = new ReCase('DevTools${d.name}');
            b.statements.add(new Code('_${rc.camelCase}._close();'));
          }
        });
    }));

    for (String domainName in ctx.domains.keys) {
      var d = ctx.domains[domainName];
      mixinBuilder
        ..abstract = true
        ..name = chromeDevToolsBase;

      // Generate a class for each domain.
      // It has one final field which points to the mixin.
      lib.body.add(new Class((classBuilder) {
        classBuilder
          ..name = 'DevTools${d.name}'
          ..fields.add(new Field((builder) {
            builder
              ..modifier = FieldModifier.final$
              ..name = '_devtools'
              ..type = new Reference(chromeDevToolsBase);
          }))
          ..constructors.add(new Constructor((builder) {
            builder.requiredParameters.add(new Parameter((builder) {
              builder
                ..toThis = true
                ..name = '_devtools';
            }));
          }));

        // Add a reference to this class in the main mixin.
        // One is private, one is public.
        var rc = new ReCase(classBuilder.name);
        mixinBuilder.fields.add(new Field((builder) {
          builder
            ..name = '_${rc.camelCase}'
            ..type = new Reference(classBuilder.name);
          assignments.add(
              new Code('_${rc.camelCase} = new ${classBuilder.name}(this);'));
        }));

        mixinBuilder.methods.add(new Method((b) {
          b
            ..type = MethodType.getter
            ..returns = new Reference(classBuilder.name)
            ..body = new Code('return _${rc.camelCase};');

          var dname = d.name.replaceAll('DOM', 'Dom');

          if (_caps.hasMatch(dname)) {
            b.name = dname.toLowerCase();
          } else {
            b.name = new ReCase(dname).camelCase;
          }
        }));

        // Now, generate RPC functions.
        var domain = d.unparsed;
        if (domain.containsKey('commands')) {
          for (Map command in domain['commands']) {
            classBuilder.methods.add(new Method((b) {
              b.docs.add('/** ${command['description'] ?? ''} */');

              // Add all parameters
              if (command.containsKey('parameters')) {
                for (Map parameter in command['parameters']) {
                  b.docs.add('/** ${parameter['name']}:'
                      '[${mapToReference(parameter, d, ctx).symbol}]'
                      ' ${parameter['description'] ?? ''} */');

                  b.optionalParameters.add(new Parameter((b) {
                    b
                      ..named = true
                      ..name = parameter['name']
                      ..type = mapToReference(parameter, d, ctx);
                  }));
                }
              }

              // Create the method body
              TypeReference returnType;
              String responseClassName;

              if (command['returns'] is List) {
                // Build response class
                var rc = new ReCase(command['name']);
                responseClassName = '${d.name}${rc.pascalCase}Response';

                if (!ctx.createdClasses.contains(responseClassName)) {
                  ctx.createdClasses.add(responseClassName);
                  lib.body.add(new Class((b) {
                    b..name = responseClassName;

                    // Add all fields
                    Map<String, Reference> types = {};
                    for (Map spec in command['returns']) {
                      b.fields.add(new Field((b) {
                        b
                          ..name = spec['name']
                          ..type = types[spec['name']] =
                              mapToReference(spec, d, ctx);
                      }));
                    }

                    // Add constructor
                    b.constructors.add(new Constructor((b) {
                      b
                        ..requiredParameters.add(
                          new Parameter((b) {
                            b
                              ..name = 'map'
                              ..type = new Reference('Map');
                          }),
                        )
                        ..body = new Block((b) {
                          // Apply all fields
                          for (Map spec in command['returns']) {
                            var name = spec['name'];
                            var type = types[name];
                            deserializeFrom(name, type, 'map', d, b, ctx);
                          }
                        });
                    }));
                  }));
                }

                returnType = new TypeReference((b) {
                  b
                    ..symbol = 'dart_async.Future'
                    ..types.add(new Reference(responseClassName));
                });
              }

              b
                ..name = command['name']
                ..returns = returnType ?? new Reference('dart_async.Future')
                ..body = new Block((b) {
                  b.statements.add(new Code('var params = {};'));

                  if (command.containsKey('parameters')) {
                    for (Map parameter in command['parameters']) {
                      var name = parameter['name'];

                      b.statements.add(new Code('''
                      if ($name != null)
                        params['$name'] = $name;
                      '''));
                    }
                  }

                  var buf = new StringBuffer();
                  buf
                    ..write(
                        "return _devtools.rpc.sendRequest('${d.name}.${command['name']}', params)");

                  if (responseClassName != null) {
                    // We need to deserialize this
                    buf.write(
                        '.then((response) => new $responseClassName(response))');
                  }

                  buf.write(";");
                  b.statements.add(new Code(buf.toString()));
                });
            }));
          }
        }

        // Generate all events
        List<String> eventControllers = [];

        classBuilder.methods.add(new Method((b) {
          b
            ..name = 'listen'
            ..returns = new Reference('void')
            ..requiredParameters.add(
              new Parameter((b) {
                b
                  ..name = 'rpc'
                  ..type = new Reference('json_rpc_2.Peer');
              }),
            );

          b.body = new Block((b) {
            if (domain.containsKey('events')) {
              for (Map event in domain['events']) {
                var rc = new ReCase(event['name']);
                var name = 'on' + rc.pascalCase;

                // Create an event type
                var eventTypeName = '${d.name}${rc.pascalCase}Event';
                lib.body.add(new Class((eventTypeBuilder) {
                  eventTypeBuilder
                    ..name = eventTypeName
                    ..docs.add('/// Fired on `${d.name}.${event['name']}`.')
                    ..constructors.add(new Constructor((b) {
                      b
                        ..requiredParameters.add(
                          new Parameter((b) {
                            b
                              ..name = 'map'
                              ..type = new Reference('Map');
                          }),
                        )
                        ..body = new Block((b) {
                          if (event.containsKey('parameters')) {
                            for (Map parameter in event['parameters']) {
                              // Create a field from each parameter
                              eventTypeBuilder.fields.add(new Field((f) {
                                f
                                  ..name = parameter['name']
                                  ..docs.add(
                                      '/** ${parameter['description'] ?? ''} */')
                                  ..type = mapToReference(parameter, d, ctx);

                                // ... And finally, deserialization logic for the event type.
                                deserializeFrom(
                                    f.name, f.type, 'map', d, b, ctx);
                              }));
                            }
                          }
                        });
                    }));
                }));

                // Create a StreamController
                classBuilder.fields.add(
                  new Field((b) {
                    b
                      ..name = '_$name'
                      ..type = new TypeReference((b) {
                        b.symbol = 'dart_async.StreamController';
                        if (eventTypeName != null)
                          b.types.add(new Reference(eventTypeName));
                      })
                      ..assignment = new Code(
                          'new dart_async.StreamController.broadcast()');
                  }),
                );

                // ... And the corresponding Stream getter
                classBuilder.methods.add(
                  new Method((b) {
                    b
                      ..name = name
                      ..docs.add('/** Broadcast stream:'
                          ' ${event['description'] ?? ''} */')
                      ..type = MethodType.getter
                      ..returns = new TypeReference((b) {
                        b.symbol = 'dart_async.Stream';
                        if (eventTypeName != null)
                          b.types.add(new Reference(eventTypeName));
                      })
                      ..lambda = true
                      ..body = new Code('_${name}.stream');
                  }),
                );

                eventControllers.add('_$name');

                var buf = new StringBuffer();
                buf.writeln("rpc.registerMethod("
                    "'${d.name}.${event['name']}', (json_rpc_2.Parameters params) {");
                buf.writeln('_$name.add(new $eventTypeName(params.asMap));');
                buf.writeln("});");
                b.statements.add(new Code(buf.toString()));
              }
            }
          });
        }));

        // Add _close()
        classBuilder.methods.add(new Method((b) {
          b
            ..name = '_close'
            ..returns = new Reference('void')
            ..body = new Block((b) {
              b.statements.addAll(eventControllers.map((name) {
                return new Code('$name.close();');
              }));
            });
        }));
      }));
    }

    // Now, generate a constructor that links all of the dependencies.
    mixinBuilder.constructors.add(new Constructor((builder) {
      builder.body = new Block.of(assignments);
    }));

    // Add an abstract getter that returns `json_rpc_2.Client`.
    mixinBuilder.methods.add(new Method((b) {
      b
        ..type = MethodType.getter
        ..name = 'rpc'
        ..returns = new Reference('json_rpc_2.Peer');
    }));
  });
}

Reference deserializeFrom(
    name, Reference type, String map, Domain d, BlockBuilder b, Ctx ctx) {
  if (type is TypeReference) {
    if (type.symbol == 'List') {
      var refType = type.types[0];
      var ref = deserializeFrom(name, refType, map, d, null, ctx);

      if (ref is TypeReference) {
        b?.statements?.add(new Code("$name = $map['$name'] is Iterable"
            " ? $map['$name'].map((m) => new ${ref.symbol}(m)).toList()"
            " : null;"));
      } else {
        // This is a normal list!
        b?.statements?.add(new Code("$name = $map['$name'];"));
      }

      return type;
    }

    // AFAIK, the target type will NEVER a Map<String,T> of deserializing-necessary objects.
    else {
      throw new UnsupportedError(
          'Unsupported type for $name on PODO ${d.name}: ${type.symbol}');
    }
  } else {
    if (const [
      'String',
      'int',
      'double',
      'num',
      'bool',
      'Null',
      'dynamic',
      'Object',
      'List',
      'Map<String, dynamic>'
    ].contains(type.symbol)) {
      b?.statements?.add(new Code("$name = $map['$name'];"));
      return type;
    } else {
      // Initialize a reference class
      b?.statements?.add(new Code("$name = $map.containsKey('$name')"
          " ? new ${type.symbol}($map['$name'])"
          " : null;"));
      return new TypeReference((b) {
        b..symbol = type.symbol;
      });
    }
  }
}

Reference mapToReference(Map prop, Domain d, Ctx ctx) {
  if (prop['\$ref'] is String)
    return new Reference(ctx.resolveType(prop['\$ref'], d));
  else if (prop['type'] is String && prop['type'] != 'object') {
    return mapToType(prop, d, ctx, null);
  } else if (prop['type'] == 'object') {
    // Anything that reaches this point is a "dictionary" of sorts.
    // Don't return a `TypeReference` because those are handled specially.
    return new Reference('Map<String, dynamic>');
  }

  throw new UnsupportedError(prop.toString());
}

Method generateToJsonMethod(List<Map> props) {
  return new Method((b) {
    var buf = new StringBuffer('return {');

    for (int i = 0; i < props.length; i++) {
      if (i > 0) buf.write(', ');
      var name = props[i]['name'];
      buf.write('"$name": $name');
    }

    buf.write('};');

    b
      ..name = 'toJson'
      ..returns = new Reference('Map<String, dynamic>')
      ..body = new Code(buf.toString());
  });
}

const List<String> restrictedNames = const [
  'List',
  'Map',
  'String',
  'int',
  'double',
  'bool'
];

Reference mapToType(Map spec, Domain domain, Ctx ctx, LibraryBuilder lib) {
  switch (spec['type']) {
    case 'string':
      return new Reference('String');
    case 'integer':
      return new Reference('int');
    case 'number':
      return new Reference('num');
    case 'boolean':
      return new Reference('bool');
    case 'any':
      return new Reference('Object');
    case 'array':
      if (spec.containsKey('items') && spec['items']['\$ref'] is String) {
        var refType = ctx.resolveType(spec['items']['\$ref'], domain);
        return new TypeReference((b) {
          b
            ..symbol = 'List'
            ..types.add(new Reference(refType));
        });
      }

      return new Reference('List');
    case 'object':
      break;
    default:
      throw 'Unsupported type: ${spec['type']} from $spec';
      break;
  }

  var id = spec['id'];

  if (restrictedNames.contains(id)) id = '\$$id';

  var rc = new ReCase(id);
  var className = rc.pascalCase;

  if (!ctx.createdClasses.contains(className)) {
    ctx.createdClasses.add(className);
    var clazz = new Class((builder) {
      builder.name = className;
      builder.docs.add('/** ${spec['description'] ?? ''} */');
    });
    domain.classes.add(clazz);
    lib.body.add(clazz);
  }

  return new Reference(className);
}

String commentify(String s) {
  if (s == null) return '';
  print(s);
  return s
      .split('\n')
      .map((s) => s.replaceAll('\\', ''))
      .map((s) => s.replaceAll('\n', ''))
      .map((s) => '\\ $s')
      .join('\n');
}

String dartEscape(String s) {
  if (const [
    'this',
    'class',
    'return',
    'const',
    'if',
    'else',
    'switch',
    'case',
    'default',
    'break',
    'var',
    'final',
    'new',
    'with',
    'catch',
    'null',
  ].contains(s)) return '\$$s';
  return s;
}

String stringifyType(Reference ref) {
  return ref.accept(new DartEmitter()).toString();
}

class Ctx {
  final Map<String, Domain> domains = {};
  final List<String> createdClasses = [];

  String resolveType(String name, Domain currentDomain) {
    if (const ['string', 'integer', 'number', 'boolean', 'any'].contains(name))
      return stringifyType(
          mapToType({'type': name}, currentDomain, this, null));

    if (!name.contains('.')) return currentDomain.types[name];
    var split = name.split('.');
    var parent = split[0], child = split[1];

    //if (parent == 'Runtime' || parent == 'Debugger') return 'Object';
    //print('$parent.$child = ${domains[parent].types[child]}');
    //print('$parent.$child??? ${domains[parent].types}');

    if (!domains.containsKey(parent))
      throw 'Non-existent parent $parent from type $name';

    return domains[parent].types[child];
  }
}

class Domain {
  final Map<String, String> types = {};
  final List<Class> classes = [];
  final String name;
  final Map unparsed;

  Domain(this.name, this.unparsed);
}
