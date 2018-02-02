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

// TODO: Enum support
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
      await specFile.writeAsString(JSON.encode(browser));
    }

    specContents = await specFile.readAsString();
    var spec = JSON.decode(specContents);
    var file = new File(generateFromSpec(spec));
    var emitter = new DartEmitter();
    var dart = file.accept(emitter).toString();

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
  return (await rs.transform(UTF8.decoder).join().then(JSON.decode)) as Map;
}

void Function(FileBuilder) generateFromSpec(Map spec) {
  return (builder) {
    builder
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
          d.types[type['id']] = mapToType(type, d, ctx, builder);
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

        var updatedClazz = clazz.rebuild((builder) {
          if (spec.containsKey('properties')) {
            for (Map prop in spec['properties']) {
              builder.fields.add(new Field((builder) {
                builder
                  ..name = dartEscape(prop['name'])
                  ..docs.add('/** ${prop['description'] ?? ''} */')
                  ..type = mapToReference(prop, d, ctx);
              }));
            }

            builder.methods.add(generateToJsonMethod(spec['properties']));
          }
        });

        builder.body
          ..remove(clazz)
          ..add(updatedClazz);
      }

      if (domain.containsKey('types')) {
        for (Map type in domain['types']) {
          d.types[type['id']] = mapToType(type, d, ctx, builder);
        }
      }
    }

    builder.body.add(generateMixinClass(ctx, builder));
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

Class generateMixinClass(Ctx ctx, FileBuilder fileBuilder) {
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
      fileBuilder.body.add(new Class((classBuilder) {
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
              // Add all parameters
              if (command.containsKey('parameters')) {
                for (Map parameter in command['parameters']) {
                  // TODO: Add docs for each parameter
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
                // TODO: Build response class
                var rc = new ReCase(command['name']);
                responseClassName = '${d.name}${rc.pascalCase}Response';

                if (!ctx.createdClasses.contains(responseClassName)) {
                  ctx.createdClasses.add(responseClassName);
                  fileBuilder.body.add(new Class((b) {
                    b..name = responseClassName;

                    // Add all fields
                    for (Map spec in command['returns']) {
                      b.fields.add(new Field((b) {
                        b
                          ..name = spec['name']
                          ..type = mapToReference(spec, d, ctx);
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
                            // TODO: Check if the target type needs to be deserialized
                            // TODO: Check if the target type is a List of deserializing-necessary objects
                            b.statements.add(new Code("$name = map['$name'];"));
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
                ..docs.add('/** ${command['description'] ?? ''} */')
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
                  buf..write("return _devtools.rpc.sendRequest('${d
                        .name}.${command['name']}', params)");

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
                // TODO: Create an event type
                var rc = new ReCase(event['name']);
                var name = 'on' + rc.pascalCase;

                // Create a StreamController
                classBuilder.fields.add(
                  new Field((b) {
                    b
                      ..name = '_$name'
                      ..type = new Reference('dart_async.StreamController')
                      ..assignment =
                          new Code('new dart_async.StreamController()');
                  }),
                );

                // ... And the corresponding Stream getter
                classBuilder.methods.add(
                  new Method((b) {
                    b
                      ..name = name
                      ..docs.add('/** ${event['description'] ?? ''} */')
                      ..type = MethodType.getter
                      ..returns = new Reference('dart_async.Stream')
                      ..lambda = true
                      ..body = new Code('_${name}.stream');
                  }),
                );

                eventControllers.add('_$name');

                var buf = new StringBuffer();
                buf.writeln("rpc.registerMethod("
                    "'${d
                    .name}.${event['name']}', (json_rpc_2.Parameters params) {");
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

Reference mapToReference(Map prop, Domain d, Ctx ctx) {
  if (prop['\$ref'] is String)
    return new Reference(ctx.resolveType(prop['\$ref'], d));
  else if (prop['type'] is String && prop['type'] != 'object') {
    var resolved = mapToType(prop, d, ctx, null);
    return new Reference(resolved);
  } else if (prop['type'] == 'object') {
    // TODO: Figure out how to get these into Maps
    return new Reference('Map');
  }

  throw new UnsupportedError(prop.toString());
}

Method generateFromJsonMethod(List<Map> props) {
  // TODO: fromJson
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

String mapToType(Map spec, Domain domain, Ctx ctx, FileBuilder fileBuilder) {
  switch (spec['type']) {
    case 'string':
      return 'String';
    case 'integer':
      return 'int';
    case 'number':
      return 'num';
    case 'boolean':
      return 'bool';
    case 'any':
      return 'Object';
    case 'array':
      if (spec.containsKey('items') && spec['items']['\$ref'] is String) {
        var refType = ctx.resolveType(spec['items']['\$ref'], domain);
        return 'List<$refType>';
      }

      return 'List';
    case 'object':
      break;
    default:
      throw 'Unsupported type: ${spec['type']}';
      break;
  }

  var rc = new ReCase(spec['id']);
  var className = rc.pascalCase;

  if (!ctx.createdClasses.contains(className)) {
    ctx.createdClasses.add(className);
    var clazz = new Class((builder) {
      builder.name = className;
      builder.docs.add('/** ${spec['description'] ?? ''} */');
    });
    domain.classes.add(clazz);
    fileBuilder.body.add(clazz);
  }

  return className;
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
    'default'
  ].contains(s)) return '\$$s';
  return s;
}

class Ctx {
  final Map<String, Domain> domains = {};
  final List<String> createdClasses = [];

  String resolveType(String name, Domain currentDomain) {
    if (const ['string', 'integer', 'number', 'boolean', 'any'].contains(name))
      return mapToType({'type': name}, currentDomain, this, null);

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
