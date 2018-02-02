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


  } catch(_) {
    await chrome.close();
  }
}
