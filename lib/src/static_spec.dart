class ChromeTabInfo {
  String description,
      devtoolsFrontendUrl,
      id,
      title,
      type,
      url,
      webSocketDebuggerUrl;

  ChromeTabInfo(Map map)
      : description = map['description'],
        devtoolsFrontendUrl = map['devtoolsFrontendUrl'],
        id = map['id'],
        title = map['title'],
        type = map['type'],
        url = map['url'],
        webSocketDebuggerUrl = map['webSocketDebuggerUrl'];
}
