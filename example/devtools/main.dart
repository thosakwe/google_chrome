import 'dart:io';
import 'package:google_chrome/google_chrome.dart';

main() async {
  var chrome = new Chrome();
  chrome.client.logger.onRecord.listen(print);
  await chrome.start();
  await chrome.stderr.pipe(stderr);
}