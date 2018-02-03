import 'package:google_chrome/google_chrome.dart';
import 'package:google_chrome/spec.dart';
import 'package:json_rpc_2/json_rpc_2.dart' as json_rpc_2;

main() async {
  var chrome = new Chrome();
  //chrome.logger.onRecord.listen(prettyLog);

  try {
    await chrome.start();
    //chrome.stderr.pipe(stderr);

    await chrome.page.enable();
    await chrome.network.enable();
    await chrome.dom.enable();
    await chrome.runtime.enable();

    // Surf to a URL...
    var angelDartPage =
        await chrome.page.navigate(url: 'https://angel-dart.github.io');

    // Wait specifically for our page to load.
    await for (var info in chrome.page.onFrameStoppedLoading) {
      if (info.frameId == angelDartPage.frameId) break;
    }

    // Get a reference to window.document so that we can run querySelectorAll()
    var document = await chrome.dom.getDocument();

    // Fetch the contents of the document
    // var contents = await chrome.dom.getOuterHTML(nodeId: document.root.nodeId);
    //print(contents.outerHTML);

    // We need to pass a reference to the target element to run a querySelectorAll.
    // In this case, we point to document.body
    var styleSheets = await chrome.dom.querySelectorAll(
      nodeId: document.root.nodeId,
      selector: 'link[rel="stylesheet"]',
    );

    // Loop through each node
    for (var id in styleSheets.nodeIds) {
      // Fetch attributes
      var attributes = await chrome.dom.getAttributes(nodeId: id);

      // Chrome sends attributes as [name1, value1, ...]
      // So use an iterator to imperatively read them.
      var it = attributes.attributes.iterator;

      while (it.moveNext()) {
        String name = it.current;
        it.moveNext();

        if (name == 'href') {
          print('Found stylesheet: ${it.current}');
          break;
        }
      }
    }
  } on json_rpc_2.RpcException catch (e) {
    throw new ArgumentError(e.data);
  } finally {
    await chrome.close();
  }
}
