import 'dart:io';
import 'package:http/io_client.dart';
import 'package:webfeed/webfeed.dart';

final Map<String, String> news_outlets = {
  'FAZ': 'https://www.faz.net/rss/aktuell/politik/',
  'NYT': 'https://rss.nytimes.com/services/xml/rss/nyt/Politics.xml',
  'TPI': 'https://thepoliticalinsider.com/feed/',
  'POL': 'https://www.politico.eu/feed/',
  'THO': 'https://truthout.org/feed/?withoutcomments=1'
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
    return pub_date.compareTo(b.pub_date);
  }
}

// create one big list from the Feeds defined in the news_outlet map
Future<List> getfeeds() async {

  List<dynamic> links = [];
  List<NewsItem> content = [];
  List<NewsItem> allContent = [];

  news_outlets.forEach((k, v) => {links.add(v)});

  for (var i = 0; i < links.length; i++) {

    final elementContent = await grabnews(links[i]);

    while ( elementContent.length > 10 ) {
      elementContent.removeAt(elementContent.length - 1);
    }

    for ( var i = 0; i < elementContent.length; i++) {
      content.add(elementContent[i]);
    }
  }

  allContent = content;
  await sort_list(allContent);

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

  final itemCount = channel.items!.length;
  List<NewsItem> newsItems = [];

  for( var i = 0; i < itemCount; i++) {
    var item = channel.items![i];
    var newsItem = NewsItem(title: item.title, link: item.link, image: item.link, pub_date: item.pubDate!);
    newsItems.add(newsItem);
  }
  return newsItems;
}

