import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poli_news/webview_widget.dart';
import 'package:webfeed/webfeed.dart' as webfeed;
import 'package:poli_news/rss.dart';
import 'package:intl/intl.dart';

final DateFormat formatter = DateFormat('H:mm dd.MM.yyyy');

void main() {
  getfeeds();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: FutureBuilder(
        
          future: getfeeds(),
          builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
            if (snapshot.hasData) {
              return Stack(
                
                children: [
                  Container(
                    color: Colors.white,
                    
                  ),
                Scaffold(
                  appBar: const CupertinoNavigationBar(
                    middle: Text('News'),
                    backgroundColor: Colors.white,
                    border: null,
                    ),

                  body: SizedBox(
                  child: CupertinoScrollbar(
                    thickness: 6.0,
                    thicknessWhileDragging: 10.0,
                    radius: const Radius.circular(34.0),
                    radiusWhileDragging: Radius.zero,
                    //controller: _controllerOne,
                    isAlwaysShown: true,
                    child: ListView.builder(
                      itemCount: 50,
                      itemBuilder: (BuildContext context, int index) {
                        return ListView.builder(
                            itemBuilder: 
                              (BuildContext context, int index) {
                                return Card(
                                  elevation: 0,
                                  child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => webview_widget(url: snapshot.data![index].link)),
                              );
                            },
                            title: Text(snapshot.data![index].title),
                            subtitle: Text(formatter.format(snapshot.data![index].pub_date).toString()),
                          ) //ListTile
                        ); //Card
                      },
                      //childCount: snapshot.data!.length,
                    ); //SliverChildBuilderDelegate
                  
                  } //SliverList
                ) 
                )
                ) 
                )
                ]
                
              );
       } else {
          return Scaffold(body: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CupertinoActivityIndicator(radius: 30,),
              Text('hold on, while we fetch your news', style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              )),
            ]
          )));
          } //else
      }, //builder
    )
  );
  }
}