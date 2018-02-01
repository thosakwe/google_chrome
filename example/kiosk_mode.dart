import 'package:google_chrome/google_chrome.dart';

main() async {
  var p = await new ChromeBuilder()
      .kiosk()
      .add('https://angel-dart.github.io')
      .spawn();
  await p.exitCode;
}
