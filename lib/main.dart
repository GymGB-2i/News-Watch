import 'package:flutter/material.dart';
import 'package:webfeed/webfeed.dart' as webfeed;
import 'package:poli_news/rss.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold()
    );
  }
}