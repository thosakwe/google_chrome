import 'dart:convert';
import 'dart:io';
import 'package:google_chrome/google_chrome.dart';
import 'pretty_logging.dart';

main() async {
  var chrome = new Chrome();
  chrome.logger.onRecord.listen(prettyLog);

  try {
    await chrome.start();
    //chrome.stderr.pipe(stderr);

    await chrome.page.enable();
    await chrome.network.enable();
    await chrome.dom.enable();

    // Set a custom `User-Agent` header
    await chrome.network.setUserAgentOverride(
      userAgent: 'package:google_chrome',
    );

    // Surf to a URL...
    await chrome.page.navigate(url: 'https://angel-dart.github.io');

    // Easily save a screenshot of the current page!
    var screenshot = await chrome.page.captureScreenshot(format: 'png');
    var imgData = BASE64.decode(screenshot.data);
    await new File('screenshot.png').writeAsBytes(imgData);
    print('Saved to screenshot.png!');
  } finally {
    await chrome.kill();
  }
}
