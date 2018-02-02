import 'dart:convert';
import 'dart:io';
import 'package:async/async.dart';
import 'package:google_chrome/google_chrome.dart';
import 'package:json_rpc_2/json_rpc_2.dart' as json_rpc_2;
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

    var onLoad = new StreamQueue(chrome.page.onDomContentEventFired);

    // Surf to a URL...
    await chrome.page.navigate(url: 'https://wren.io');
    await onLoad.next;

    // Get a reference to window.document so that we can run querySelectorAll()
    var document = await chrome.dom.getDocument();

    // Print the contents of the document
    var contents = await chrome.dom.getOuterHTML(nodeId: document.root.nodeId);
    print(contents.outerHTML);

    // We need to pass a reference to the target element to run a querySelectorAll.
    // In this case, we point to document.body
    var styleSheets = await chrome.dom.querySelectorAll(
      nodeId: document.root.nodeId,
      selector: 'link[rel="stylesheet"]',
    );

    for (var id in styleSheets.nodeIds) {
      var stylesheet = await chrome.dom.resolveNode(nodeId: id);
      print(stylesheet.object.description);
    }
  } on json_rpc_2.RpcException catch (e) {
    throw new ArgumentError(e.data);
  } finally {
    await chrome.close();
  }
}
