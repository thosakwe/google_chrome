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
  final HttpClient _http = new HttpClient();

  @override
  final Logger logger = new Logger('chrome');

  Process _process;
  Stream<List<int>> _stderr;

  Stream<List<int>> get stdout => _process.stdout;

  Stream<List<int>> get stderr => _stderr;

  Chrome();

  Chrome.fromWebSocket(WebSocket websocket) : super.fromWebSocket(websocket);

  static Future<Process> spawn(List<String> args,
      {String chromePath, bool runInShell}) {
    if (chromePath == null) {
      if (Platform.isMacOS) {
        // TODO: Support custom path
        chromePath = p.join(
          '/Applications',
          'Google Chrome.app',
          'Contents',
          'MacOS',
          'Google Chrome',
        );
      } else
        throw new UnsupportedError('Can only start Chrome on MacOS currently');
    }

    return Process.start(chromePath, args, runInShell: runInShell == true);
  }

  Future start({ChromeBuilder builder}) async {
    // Get free port
    var socket = await ServerSocket.bind('127.0.0.1', 0);
    var port = socket.port;
    await socket.close();
    var c = new Completer();

    builder ??=
        new ChromeBuilder().headless().disableGpu().remoteDebuggingPort(port);

    _process = await builder.spawn();

    var err = new StreamSplitter(_process.stderr);
    _stderr = err.split();

    var sub = err.split().listen(null);
    var lines = new SubscriptionStream(sub)
        .transform(UTF8.decoder)
        .transform(const LineSplitter());
    var queue = new StreamQueue(lines);

    while (await queue.hasNext) {
      var line = await queue.next;
      var match = _rgxWs.firstMatch(line);

      if (match != null) {
        var browserDevUri = Uri.parse(match.group(0));

        // Fetch /json endpoint
        var rq = await _http.openUrl(
            'GET', browserDevUri.replace(scheme: 'http', path: '/json'));
        var rs = await rq.close();
        var schema =
            await rs.transform(UTF8.decoder).join().then(JSON.decode) as List;
        var wsDebuggerUrl = Uri.parse(schema[0]['webSocketDebuggerUrl']);
        await connect(wsDebuggerUrl);
        queue.cancel();
        sub.cancel();
        c.complete();
        break;
      }
    }

    return await c.future;
  }

  bool kill() {
    _http.close(force: true);
    return _process?.kill() ?? true;
  }
}
