import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:async/async.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as p;
import 'chrome_builder.dart';
import 'client.dart';

/// Represents a Google Chrome process.
class Chrome extends ChromeDevToolsBaseClient {
  static final RegExp _rgxWs = new RegExp(r'ws://[^$]+');

  @override
  final Logger logger = new Logger('chrome');

  Directory _directory;
  Process _process;
  Stream<List<int>> _stderr;

  Stream<List<int>> get stdout => _process.stdout;

  Stream<List<int>> get stderr => _stderr;

  Chrome();

  Chrome.fromWebSocket(WebSocket websocket) : super.fromWebSocket(websocket);

  static Future<Process> spawn(List<String> args,
      {String chromePath, bool runInShell}) async {
    if (chromePath == null) {
      if (Platform.isMacOS) {
        chromePath = p.join(
          '/Applications',
          'Google Chrome.app',
          'Contents',
          'MacOS',
          'Google Chrome',
        );
      } else if (Platform.isWindows) {
        // Discern Windows version
        // https://kingluddite.com/uncategorized/where-does-the-chrome-browser-install-itself-on-windows-7
        //var username = Platform.environment['USERNAME'];
        //var ver = await Process.run('ver', []);
        String chromeDir;

        /*
        String versionString = '';// await ver.stdout.transform(UTF8.decoder).join();

        if (versionString.contains('XP')) {
          //  C:\Documents and Settings\UserName\Local Settings\ApplicationData\GoogleChrome
          chromeDir = p.join(
            'C:',
            'Documents and Settings',
            username,
            'Local Settings',
            'ApplicationData',
            'GoogleChrome',
          );
        } else if (versionString.contains('Vista')) {
          // C:\Users\UserName\AppData\Local\GoogleChrome
          chromeDir = p.join(
            'C:',
            'Users',
            username,
            'AppData',
            'Local',
            'GoogleChrome',
          );
        } else {
          */
        // \pgx86\Google\Chrome\Application
        chromeDir = p.join(
          'C:',
          'Program Files (x86)',
          'Google',
          'Chrome',
          'Application',
        );
        //}

        chromePath = p.join(chromeDir, 'chrome.exe');
      } else {
        chromePath = 'google-chrome';
      }
    }

    return await Process.start(chromePath, args,
        runInShell: runInShell == true);
  }

  Future start({ChromeBuilder builder}) async {
    // Get free port
    var c = new Completer();

    if (builder == null) {
      var socket = await ServerSocket.bind('127.0.0.1', 0);
      var port = socket.port;
      await socket.close();
      _directory = await Directory.systemTemp.createTemp();
      builder = new ChromeBuilder()
          .headless()
          .disableGpu()
          .remoteDebuggingPort(port)
          .userDataDir(_directory.absolute.path);
    }

    _process = await builder.spawn();

    var err = new StreamSplitter(_process.stderr);
    _stderr = err.split();

    var sub = err.split().listen(null);
    var lines = new SubscriptionStream(sub)
        .transform(utf8.decoder)
        .transform(const LineSplitter());
    var queue = new StreamQueue(lines);

    while (await queue.hasNext) {
      var line = await queue.next;
      var match = _rgxWs.firstMatch(line);

      if (match != null) {
        var browserDevUri = Uri.parse(match.group(0));

        // Fetch /json endpoint
        var rq = await httpClient.openUrl(
            'GET', browserDevUri.replace(scheme: 'http', path: '/json'));
        var rs = await rq.close();
        var schema =
            await rs.transform(utf8.decoder).join().then(json.decode) as List;
        var wsDebuggerUrl = Uri.parse(schema[0]['webSocketDebuggerUrl'] as String);
        await connect(wsDebuggerUrl);
        queue.cancel();
        sub.cancel();
        c.complete();
        break;
      }
    }

    return await c.future;
  }

  @override
  Future close() async {
    await _directory?.delete(recursive: true)?.catchError((_) => null);
    _process?.kill();
    return await super.close();
  }
}
