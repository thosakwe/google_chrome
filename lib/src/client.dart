import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:json_rpc_2/json_rpc_2.dart' as json_rpc_2;
import 'package:logging/logging.dart';
import 'package:stream_channel/stream_channel.dart';
import 'spec.dart';
import 'static_spec.dart';

class ChromeDevToolsBaseClient extends ChromeDevToolsBase {
  final Logger logger = new Logger('chrome_devtools_base_client');
  final HttpClient httpClient = new HttpClient();
  Uri webSocketDebuggerUrl;
  final Map<String, StreamController<json_rpc_2.Parameters>> _controllers = {};
  json_rpc_2.Peer _rpc;
  StreamChannelController _ctrl;
  StreamSubscription _sub;
  WebSocket _websocket;

  ChromeDevToolsBaseClient();

  ChromeDevToolsBaseClient.fromWebSocket(this._websocket) {
    _listen();
  }

  bool get connected => _websocket != null && _rpc != null;

  Uri get httpRoot => webSocketDebuggerUrl.replace(scheme: 'http', path: '/');

  @override
  json_rpc_2.Peer get rpc => _rpc;

  Future connect(Uri uri) async {
    assert(_websocket == null);
    webSocketDebuggerUrl = uri;
    _websocket = await WebSocket.connect(uri.toString());
    _listen();
    logger.config('WebSocket connected: $uri');
  }

  Future close() async {
    httpClient.close(force: true);
    await _sub?.cancel();
    await _rpc?.close();
    await _websocket?.close();
    await super.close();
  }

  Future<List<ChromeTabInfo>> listTabs() async {
    var rq = await httpClient.openUrl('GET', httpRoot.resolve('json/list'));
    var rs = await rq.close();
    var jsons =
        await rs.transform(utf8.decoder).transform(json.decoder).first as List;
    return jsons.map((m) => new ChromeTabInfo(m as Map)).toList();
  }

  Future<ChromeTabInfo> newTab() async {
    var rq = await httpClient.openUrl('POST', httpRoot.resolve('json/new'));
    var rs = await rq.close();
    var jsons = await rs.transform(utf8.decoder).transform(json.decoder).first;
    return new ChromeTabInfo(jsons as Map);
  }

  Future waitMs(int ms) {
    return new Future.delayed(new Duration(milliseconds: ms));
  }

  _ensureJsonRpc(m) {
    if (m is List)
      return m.map(_ensureJsonRpc).toList();
    else if (m is Map) {
      return m..['jsonrpc'] = '2.0';
    } else
      return m;
  }

  /// Listens for arbitrary RPC events fired from Chrome.
  Stream<json_rpc_2.Parameters> on(String eventName) {
    return _controllers.putIfAbsent(eventName, () {
      var ctrl = new StreamController<json_rpc_2.Parameters>.broadcast();
      _rpc.registerMethod(eventName, ctrl.add);
      return ctrl;
    }).stream;
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
      var valid = _ensureJsonRpc(json.decode(data as String));
      _ctrl.local.sink.add(json.encode(valid));
    });

    listen();

    _rpc.listen();
  }
}
