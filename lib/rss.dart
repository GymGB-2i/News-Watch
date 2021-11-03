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



grabnews(url) async {

    final client = IOClient(HttpClient()
    ..badCertificateCallback =
        ((X509Certificate cert, String host, int port) => true));

         var response = await client.get(
      Uri.parse(url));
  var channel = RssFeed.parse(response.body);
  print(channel);
}