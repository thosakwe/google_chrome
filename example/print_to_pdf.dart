import 'package:google_chrome/google_chrome.dart';

main() async {
  var p = await new ChromeBuilder()
      .headless()
      .disableGpu()
      .windowSize(600, 400)
      .printToPdf()
      .add('https://angel-dart.github.io')
      .spawn();
  await p.exitCode;
}
