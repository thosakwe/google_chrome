import 'package:async/async.dart';
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
    await chrome.runtime.enable();

    // Use a `StreamQueue` to sequentially await events on-demand.
    var onLoad = new StreamQueue(chrome.page.onDomContentEventFired);

    // Change the page.
    await chrome.page.navigate(url: 'https://pub.dartlang.org');

    // Wait for the page to load.
    await onLoad.next;

    // Get the document title.
    var eval = await chrome.runtime.evaluate(expression: 'document.title');
    var title = eval.result.value;
    print('Title: $title');
  } finally {
    chrome.close();
  }
}
