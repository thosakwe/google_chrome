import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:async/async.dart';
import 'package:charcode/charcode.dart';
import 'chrome_builder.dart';

/// A simple wrapper over the headless Chrome REPL.
class ChromeRepl extends Stream<String> {
  final ChromeBuilder builder;
  StreamQueue _stdout, _stderr;
  Process _process;

  ChromeRepl({ChromeBuilder builder})
      : this.builder = builder ??
            new ChromeBuilder()
                .headless()
                .disableGpu()
                .repl()
                .add('https://www.chromestatus.com/');

  Future<int> get exitCode => _process.exitCode;

  Process get process => _process;

  IOSink get stdin => _process.stdin;

  Stream<List<int>> get stderr => _process.stderr;

  bool kill() {
    return _process?.kill() ?? true;
  }

  Future start() async {
    _process = await builder.spawn(runInShell: true);
    _stdout = new StreamQueue(
        _process.stdout.transform(UTF8.decoder).transform(const LineSplitter())
        // .transform(JSON.decoder)
        );
    //_stderr = new StreamQueue(_process.stderr.transform(UTF8.decoder));
  }

  Future eval(String text) async {
    _process.stdin.writeln(text);
    await _process.stdin.flush();
    return await _stdout.next;
  }

  @override
  StreamSubscription<String> listen(void onData(String event),
      {Function onError, void onDone(), bool cancelOnError}) {
    return _stdout.rest.listen(onData,
        onError: onError, onDone: onDone, cancelOnError: cancelOnError);
  }
}
