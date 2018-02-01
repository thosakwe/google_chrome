import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:async/async.dart';
import 'package:path/path.dart' as p;
import 'chrome_builder.dart';
import 'client.dart';

/// Represents a Google Chrome process.
class Chrome {
  static final RegExp _rgxWs = new RegExp(r'ws://[^$]+');
  final ChromeDevToolsClient devTools = new ChromeDevToolsClient();
  Process _process;
  Stream<List<int>> _stderr;

  Stream<List<int>> get stdout => _process.stdout;

  Stream<List<int>> get stderr => _stderr;

  static Future<Process> spawn(List<String> args) {
    String chromePath;

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
    return Process.start(chromePath, args);
  }

  Future start({ChromeBuilder builder}) async {
    // Get free port
    var socket = await ServerSocket.bind('127.0.0.1', 0);
    var port = socket.port;
    await socket.close();

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

    while (!devTools.connected && await queue.hasNext) {
      var line = await queue.next;
      var match = _rgxWs.firstMatch(line);

      if (match != null) {
        queue.cancel();
        sub.cancel();
        await devTools.connect(Uri.parse(match.group(0)));
        break;
      }
    }
  }

  bool kill() {
    return _process.kill();
  }
}
