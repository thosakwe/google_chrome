import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:json_rpc_2/json_rpc_2.dart' as json_rpc_2;
import 'package:logging/logging.dart';
import 'package:stream_channel/stream_channel.dart';
import 'package:web_socket_channel/io.dart';
import 'spec.dart';

class ChromeDevToolsBaseClient extends ChromeDevToolsBase {
  final Logger logger = new Logger('chrome_devtools_base_client');
  json_rpc_2.Peer _rpc;
  StreamChannelController _ctrl;
  StreamSubscription _sub;
  WebSocket _websocket;

  ChromeDevToolsBaseClient();

  ChromeDevToolsBaseClient.fromWebSocket(this._websocket) {
    _listen();
  }

  bool get connected => _websocket != null && _rpc != null;

  @override
  json_rpc_2.Peer get rpc => _rpc;

  Future connect(Uri uri) async {
    assert(_websocket == null);
    _websocket = await WebSocket.connect(uri.toString());
    _listen();
    logger.config('WebSocket connected: $uri');
  }

  Future close() async {
    await _rpc.close();
    await _websocket.close();
  }

  _ensureJsonRpc(m) {
    if (m is List)
      return m.map(_ensureJsonRpc).toList();
    else if (m is Map) {
      return m..['jsonrpc'] = '2.0';
    } else
      return m;
  }

  void _listen() {
    _ctrl = new StreamChannelController();

    _rpc = new json_rpc_2.Peer(_ctrl.foreign.cast<String>());

    _ctrl.local.stream.listen((data) {
      logger.info('OUT: $data');
      _websocket.add(data);
    });

    _sub = _websocket.listen((data) {
      logger.info('IN: $data');
      var valid = _ensureJsonRpc(JSON.decode(data));
      _ctrl.local.sink.add(JSON.encode(valid));
    });

    _rpc.registerMethod('error', (json_rpc_2.Parameters params) {
      logger.severe(params.value);
    });

    _rpc.listen();
  }
}
