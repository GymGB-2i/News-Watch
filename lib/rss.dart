import 'dart:io';
import 'package:http/io_client.dart';
import 'package:webfeed/webfeed.dart';

final Map<String, String> news_outlets = {
  'FAZ': 'https://www.faz.net/rss/aktuell/politik/',
  'NYT': 'https://rss.nytimes.com/services/xml/rss/nyt/Politics.xml',
  'DEF': 'https://www.deutschlandfunkkultur.de/politik-zeitgeschehen.1521.de.rss',
};

class NewsItem {

  final String? title;
  final String? link;
  final String? image;
  final DateTime pub_date;

  NewsItem({
    this.image,
    required this.title,
    required this.link,
    required this.pub_date,
  });

  comparer(NewsItem b) {
    return this.pub_date.compareTo(b.pub_date);
  }



}

// create one big list from the Feeds defined in the news_outlet map
Future<List> getfeeds() async {

  List<dynamic> links = [];
  List<NewsItem> content = [];
  List<NewsItem> all_content = [];

  news_outlets.forEach((k, v) => {links.add(v)});

  for (var i = 0; i < links.length; i++) {

    final element_content = await grabnews(links[i]);

    while ( element_content.length > 10 ) {
      element_content.removeAt(element_content.length - 1);
    }

    for ( var i = 0; i < element_content.length; i++) {
      content.add(element_content[i]);
    }
  }

  all_content = content;
  await sort_list(all_content);

  return content;
}

// sort a list w/ news_items according to the pub_date
sort_list(List<NewsItem> list) {
  list.sort((a, b) => b.comparer(a));

  return list;
}

// get the contents of an rss feed based on its link
Future<List> grabnews(url) async {

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
    var news_item = NewsItem(title: item.title, link: item.link, image: item.link, pub_date: item.pubDate!);
    news_items.add(news_item);
  }
  return news_items;
}

