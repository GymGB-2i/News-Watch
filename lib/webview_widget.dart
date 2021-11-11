import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class webview_widget extends StatefulWidget {
  const webview_widget({Key? key, required this.url}) : super(key: key);

  final url;

  @override
  _webview_widgetState createState() => _webview_widgetState();
}

class _webview_widgetState extends State<webview_widget> {
  @override

  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(),
      body: Center(
        child: WebView(
          initialUrl: widget.url
        )
      )
    );
  }