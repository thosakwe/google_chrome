import 'dart:io';
import 'package:google_chrome/google_chrome.dart';

main() async {
  // Use `dart:io` to create a temporary directory.
  var profileDir = await Directory.systemTemp.createTemp();

  // Use `userDataDir` to use this custom, temporary profile.
  var p = await new ChromeBuilder()
      .windowSize(800, 600)
      .add('https://dartlang.org')
      .userDataDir(profileDir.absolute.path)
      .spawn();
  await p.exitCode;

  // Clean up the directory.
  await profileDir.delete(recursive: true);
}
