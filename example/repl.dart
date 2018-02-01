import 'dart:io';
import 'package:google_chrome/google_chrome.dart';

// TODO: Hangs forever
main() async {
  var repl = new ChromeRepl();
  await repl.start();

  stdout.write('> ');
  String line;

  while ((line = stdin.readLineSync()) != 'quit') {
    var result = await repl.eval(line);
    print('Yup: $result');
    stdout.write('> ');
  }

  await repl.kill();
  await repl.exitCode;
}
