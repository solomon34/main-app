

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:main_app/constants.dart'; 


class Community extends StatelessWidget { 
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CommunityPage(
      ),
    );
  }
}
class CommunityPage extends StatefulWidget { 
  static const String id = 'Communitypage';
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> { 
int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackgroundColor, 
        body:SafeArea( 
          child: Column(
            children: <Widget>[ 
           // Image(
              //Image.asset('images/avatartla.png'),
           // ), 
           // Text(
                //    'Avatar The Last Airbender'
               //),
           // Row(children: <Widget>[
             //Container( child: FlatButton(
              // child: 
                   // Text(
                   // 'Talk'
              // ),
             //),   
             //{onPressed: null

            // },
             
            // ), 
             //Container( child: FlatButton(
              // child: 
               //     Text(
                //    'Watch'
              // ),
             //),  
             
             //), 
            // Container( child: FlatButton(
             //  child: 
              //      Text(
                //    'Info'
             //  ),
             //),  
             
            // ),
             // ],
           // ),
              
            Divider(
              color: kPrimaryColor,
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
