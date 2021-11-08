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
    return MaterialApp(
      home: Scaffold(
        body: FutureBuilder(
          future: getfeeds(),
          builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: snapshot.data?.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                        snapshot.data![index].title,)
                    
                    //Text(
                        //snapshot.data![index].age,
                      //style: Theme.of(context).textTheme.headline6
                    //)
                  );
                
              
            },
          );
       } 
       else {
          
          return const Center(child: Text('Hello World'));
          }
      }, //builder
    )
    )
  );
  }
}