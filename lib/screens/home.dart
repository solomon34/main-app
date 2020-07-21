

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:main_app/constants.dart'; 
import 'package:main_app/screens/communitypage.dart';



class Home extends StatelessWidget { 
  static const String id = 'Home';
  final appTitle = 'Drawer Demo';

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
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: kPrimaryColor,
        ),
      body: SafeArea( 
           
          child: Column(
            children: <Widget>[  
                  
            
             Container(child: Text('Your Favorites ...'),

             ),
          
            SizedBox(
                width: 10.0,
              ),
              
                  Column(
                        children: <Widget>[  
                        Image.asset(
                        'images/avatartla.png' ,
                      height: 20,
                      
                        ),
                          Container(child:  
                          
                            FlatButton(
                              onPressed:() {
                                Navigator.pushNamed(context, CommunityPage.id);
                              }, 
                              
                              child: 
                                Text(
                                  'Avatar The Last Airbender'
                                ),
                            
                          ), 
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                        ],
                      ), 
                 
            ], 
          ),
          
        ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Quick Navigation'),
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
            ),
            ListTile(
              title: Text('About US'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Account'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ), 
             ListTile(
              title: Text('Sign Out'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),  

       bottomNavigationBar: BottomNavigationBar(
                    backgroundColor: kPrimaryColor,
                    currentIndex: _currentIndex,
                    iconSize: 20,
                    selectedFontSize: 18, 
                    type: BottomNavigationBarType.fixed,
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        title: Text('Home'),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.search),
                        title: Text('Search'),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        title: Text('Profile'),
                      ),
                    ],
                    onTap: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    unselectedItemColor: Colors.white,
                    selectedItemColor: Colors.black,
                  ), 
                  
    );
  }
}                   