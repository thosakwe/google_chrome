import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:logging/logging.dart';

class ChromeDevtoolsClient {
  final Logger logger = new Logger('chrome_devtools_client');
  WebSocket _websocket;

  ChromeDevtoolsClient();

  ChromeDevtoolsClient.fromWebSocket(this._websocket) {
    _listen();
  }

  bool get connected => _websocket != null;

  Future connect(Uri uri) async {
    assert(_websocket == null);
    _websocket = await WebSocket.connect(uri.toString());
    _listen();
    logger.info('WebSocket connected: $uri');
  }

  void _listen() {
    _websocket.listen(logger.fine);

    new Timer(const Duration(seconds: 10), () {
      print('boom');
      _websocket.add(JSON.encode({
        "method": "Page.navigate",
        "id": 1,
        "params": {
          "url": "https://angel-dart.github.io",
        }
      }));
    });
  }
}
