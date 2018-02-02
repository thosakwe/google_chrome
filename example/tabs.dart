import 'package:google_chrome/google_chrome.dart';
import 'pretty_logging.dart';

main() async {
  var chrome = new Chrome();
  chrome.logger.onRecord.listen(prettyLog);

  try {
    await chrome.start();

    var tab = await chrome.newTab();
    print('${tab.id}: ${tab.devtoolsFrontendUrl}');

    var tabs = await chrome.listTabs();

    for (int i = 0; i < tabs.length; i++) {
      if (tabs[i].id == tab.id) {
        print('Index $i');
        break;
      }
    }
  } finally {
    await chrome.close();
  }
}
