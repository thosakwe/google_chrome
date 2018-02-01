import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:json_rpc_2/json_rpc_2.dart' as json_rpc_2;
import 'package:logging/logging.dart';
import 'package:web_socket_channel/io.dart';
import 'spec.dart';

class ChromeDevToolsClient extends ChromeDevToolsBase {
  final Logger logger = new Logger('chrome_devtools_client');
  json_rpc_2.Client _client;
  WebSocket _websocket;

  ChromeDevToolsClient();

  ChromeDevToolsClient.fromWebSocket(this._websocket) {
    _listen();
  }

  bool get connected => _websocket != null;

  @override
  json_rpc_2.Client get client => _client;

  Future connect(Uri uri) async {
    assert(_websocket == null);
    _websocket = await WebSocket.connect(uri.toString());
    _listen();
    logger.info('WebSocket connected: $uri');
  }

  Future close() async {
    await _client.close();
    await _websocket.close();
  }

  void _listen() {
    var channel = new IOWebSocketChannel(_websocket);
    _client = new json_rpc_2.Client(channel.cast<String>());
    _client.listen();
  }
}
