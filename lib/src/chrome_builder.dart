import 'dart:async';
import 'dart:io';
import 'chrome.dart';

/// Helper class to build Chrome processes.
class ChromeBuilder {
  // TODO: All of https://cs.chromium.org/chromium/src/headless/app/headless_shell_switches.cc
  final List<String> _args = [];
  String _chromePath;

  ChromeBuilder add(String arg) {
    _args.add(arg);
    return this;
  }

  /// Set an explicit path for the Chrome executable. Use this if starting Node, Opera, etc.
  ChromeBuilder chromePath(String path) {
    return this.._chromePath = path;
  }

  /// Spawn a headless browser (no UI);
  ChromeBuilder headless() => add('--headless');

  /// Disable GPU acceleration.
  ChromeBuilder disableGpu() => add('--disable-gpu');

  /// Print `document.body.innerHTML` to stdout.
  ChromeBuilder dumpDom() => add('--dump-dom');

  /// Enable kiosk mode.
  ChromeBuilder kiosk() => add('--kiosk');

  /// Create a PDF of the page.
  ChromeBuilder printToPdf() => add('--print-to-pdf');

  /// Directory where the browser stores the user profile.
  ChromeBuilder userDataDir(String dir) => add('--user-data-dir=$dir');

  /// Take a screenshot.
  ChromeBuilder screenshot() => add('--screenshot');

  /// Set the size of the window.
  ChromeBuilder windowSize(int width, height) =>
      add('--window-size=$width,$height');

  /// Runs Headless in a mode where you can evaluate JS expressions in the browser, right from the command line.
  ChromeBuilder repl() => add('--repl');

  /// Sets the port for DevTools to listen on.
  ChromeBuilder remoteDebuggingPort(int port) =>
      add('--remote-debugging-port=$port');

  Future<Process> spawn({bool runInShell}) =>
      Chrome.spawn(_args, chromePath: _chromePath, runInShell: runInShell);
}
