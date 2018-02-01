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
      var client = new io.HttpClient();
      var url =
          'https://github.com/ChromeDevTools/devtools-protocol/raw/$tree/json/browser_protocol.json';
      var rq = await client.openUrl('GET', Uri.parse(url));
      var rs = await rq.close();
      await rs.pipe(specFile.openWrite());
      await client.close();
    }

    specContents = await specFile.readAsString();
    var spec = JSON.decode(specContents);
    var file = new File(generateFromSpec(spec));
    var emitter = new DartEmitter();
    var dart = new DartFormatter().format(file.accept(emitter).toString());
    var dartFile =
        new io.File.fromUri(io.Platform.script.resolve('../lib/src/spec.dart'));
    await dartFile.create(recursive: true);
    await dartFile.writeAsString(dart);
  } on ArgParserException catch (e) {
    io.stderr..writeln(e.message)..writeln(argParser.usage);
  }
}

void Function(FileBuilder) generateFromSpec(Map spec) {
  return (builder) {
    builder.body.addAll([
      new Code('// AUTO-GENERATED. DO NOT MODIFY BY HAND.\n'),
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
                builder.name = prop['name'];
                builder.docs.add('/** ${prop['description'] ?? ''} */\n');

                if (prop['\$ref'] is String)
                  builder.type =
                      new Reference(ctx.resolveType(prop['\$ref'], d));
                else if (prop['type'] is String && prop['type'] != 'object') {
                  var resolved = mapToType(prop, d, ctx, null);
                  builder.type = new Reference(resolved);
                } else if (prop['type'] == 'object') {
                  // TODO: Figure out how to get these into Maps
                  builder.type = new Reference('Map');
                }
              }));
            }
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

    for (String domainName in ctx.domains.keys) {
      var d = ctx.domains[domainName];
      var domain = d.unparsed;

      //builder.body.add(generateDomainClass(domain));
    }
  };
}

Class generateDomainClass(Map domain) {
  return new Class((builder) {
    var rc = new ReCase(domain['domain']);
    builder..name = rc.pascalCase;
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
      builder.docs.add('/** ${spec['description'] ?? ''} */\n');
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

class Ctx {
  final Map<String, Domain> domains = {};
  final List<String> createdClasses = [];

  String resolveType(String name, Domain currentDomain) {
    if (const ['string', 'integer', 'number', 'boolean', 'any'].contains(name))
      return mapToType({'type': name}, currentDomain, this, null);

    if (!name.contains('.')) return currentDomain.types[name];
    var split = name.split('.');
    var parent = split[0], child = split[1];

    if (parent == 'Runtime') return 'Object';
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
