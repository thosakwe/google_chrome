# google_chrome
Google Chrome automation API for Dart.
The bulk of it is auto-generated.

Built against
[version 1.3](https://chromedevtools.github.io/devtools-protocol/1-3)
of the
[Chrome DevTools Protocol](https://chromedevtools.github.io/devtools-protocol).

Tested on:
* MacOS Sierra
* Windows 10

Possibilities include:
* Server-side rendering
* JavaScript sandbox with ES6 support (though it has high memory use)
* Web scraping
* Testing
* Performance analysis
* And more...

## Notes
* Uses a temporary user profile by default, which is deleted after `close()`.

## Example
```dart
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
```

## Events

## HTTP Querying

## `ChromeBuilder`