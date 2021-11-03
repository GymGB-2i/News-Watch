import 'dart:io';
import 'package:http/io_client.dart';
import 'package:webfeed/webfeed.dart';

class NewsItem {

  final String title;
  final String link;
  final String? image;

  NewsItem({
    this.image,
    required this.title,
    required this.link,
  });

}