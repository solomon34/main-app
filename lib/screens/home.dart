import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:main_app/constants.dart';
import 'package:main_app/screens/chat_screen.dart';
import 'package:main_app/screens/communitypage.dart';
import 'package:main_app/screens/profilepage.dart';

class Home extends StatelessWidget {
  static const String id = 'Home';
  final appTitle = 'Home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: HomePag(title: appTitle),
    );
  }
}

class HomePag extends StatefulWidget {
  final String title;
  HomePag({Key key, this.title}) : super(key: key);

  @override
  _HomePagState createState() => _HomePagState();
}

class _HomePagState extends State<HomePag> {
  int selectedIndex = 0;
  final widgetOptions = [
    Home(),
    //Search(),
    ProfilePage(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: kPrimaryColor,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex, 
          backgroundColor: kPrimaryColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ), 
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text('Chat'),
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.search),
            //   title: Text('Search'),
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePag()));  
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ChatScreen())); 
                //  Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => SearchPage()));  
             Navigator.push(
                context, MaterialPageRoute(builder: (context) => ProfilePage())); 

          },
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                child: Text('Your Favorites ...'),
              ),
              SizedBox(
                width: 10.0,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/avatartla.png',
                      height: 200,
                      width: 300,
                    ),
                    Container(
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CommunityProfile()));
                        },
                        child: Text('Avatar The Last Airbender'),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
