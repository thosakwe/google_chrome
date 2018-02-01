import 'dart:async';
import 'dart:io';
import 'package:google_chrome/google_chrome.dart';

main() async {
  var chrome = new Chrome();
  chrome.devTools.logger.onRecord.listen(print);
  await chrome.start(
    builder: new ChromeBuilder()
        .disableGpu()
        .windowSize(600, 400)
        .remoteDebuggingPort(9222),
  );
  chrome.stderr.pipe(stderr);

  await new Future.delayed(const Duration(seconds: 10), () async {
    print('Starting work...');
    await chrome.devTools.page
        .navigate(url: 'https://angel-dart.github.io')
        .timeout(const Duration(seconds: 10));
    var snapshot = await chrome.devTools.domSnapshot.getSnapshot();
    print('DOM Node count: ${snapshot.domNodes.length}');
  });
}
