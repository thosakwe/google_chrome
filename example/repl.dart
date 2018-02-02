import 'dart:io';
import 'package:google_chrome/google_chrome.dart';

main() async {
  var chrome = new Chrome();

  try {
    await chrome.start();
    await chrome.runtime.enable();

    stdout.write('> ');
    String line;

    while ((line = stdin.readLineSync()) != 'quit') {
      var remoteObject = await chrome.runtime.evaluate(expression: line);

      if (remoteObject.exceptionDetails != null) {
        stderr.writeln(remoteObject.exceptionDetails.exception.description);
      } else {
        var result = remoteObject.result.value;
        print(result ?? 'undefined');
      }

      stdout.write('> ');
    }
  } finally {
    await chrome.close();
  }
}
