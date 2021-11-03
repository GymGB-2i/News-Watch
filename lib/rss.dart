import 'dart:io';
import 'package:http/io_client.dart';
import 'package:webfeed/webfeed.dart';

class NewsItem {

  final String? title;
  final String? link;
  final String? image;
  final DateTime? pub_date;

  NewsItem({
    this.image,
    required this.title,
    required this.link,
    required this.pub_date,
  });

}



grabnews(url) async {

    final client = IOClient(HttpClient()
    ..badCertificateCallback =
        ((X509Certificate cert, String host, int port) => true));

         var response = await client.get(
      Uri.parse(url));
  var channel = RssFeed.parse(response.body);

  final item_count = channel.items!.length;
  List<NewsItem> news_items = [];

  for( var i = 0; i < item_count; i++) {
    var item = channel.items![i];
    var news_item = NewsItem(title: item.title, link: item.link, image: item.link, pub_date: item.pubDate);
    news_items.add(news_item);
  }
  return news_items;
}