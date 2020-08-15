import 'package:flutter/material.dart';
import 'package:main_app/constants.dart'; 


class News extends StatelessWidget {
  @override  
  static const String id = 'News';
  final appTitle = 'News';
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle, 
      home: NewsPage(title: appTitle),
    );
  }
} 

class NewsPage extends StatefulWidget { 
  
  final String title;

  NewsPage({Key key, this.title}) : super(key: key);
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor, 
      body: SafeArea( 
        child: Column (
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('news1.jpg'),
            Center(
              child: Text(
                'Avatar The Last Airbender first aired on Netflix in June 2020. Fans of all kind were rallying to watch the show. And since its air, Atla Has beenon netflixes top 10 for over a month. This event is very exciting news for all fans.',
                
              ),
            ), 
            Divider( 
              thickness: 5.0, 
              color: kPrimaryColor, 
              height: 40.0, 
              indent: 40.0, 
              endIndent: 40.0,
            ), 
            Image.asset('news2.jpg'), 
            Center(
              child: Text(
                'The Legend of Korra is going to be aired on Netflix as well! It is said that TLOk is scheduled to air on Netflix on August 14 to accomadate for fans wanting more Avatar Content. I cant wait much longer',
              ),
            ), 
             Divider( 
              thickness: 5.0, 
              color: kPrimaryColor, 
              height: 40.0, 
              indent: 40.0, 
              endIndent: 40.0,
            ),  
            Image.asset(''),
          ],
        ),
      ),
    );
  }
}