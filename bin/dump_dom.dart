import 'dart:io';
import 'package:google_chrome/google_chrome.dart';

main() async {
  var p = await new ChromeBuilder()
      .headless()
      .disableGpu()
      .dumpDom()
      .add('https://angel-dart.github.io')
      .spawn();
  await p.exitCode;
  await p.stdout.pipe(stdout);
  /*
  var chrome = new Chrome();
  await chrome.start();
  chrome..stdout.pipe(stdout)..stderr.pipe(stderr);
  */
}
