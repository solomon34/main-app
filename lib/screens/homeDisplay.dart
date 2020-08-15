import 'package:flutter/material.dart';
import 'package:main_app/screens/home.dart';
import 'package:main_app/screens/profilepage.dart'; 
import 'package:main_app/constants.dart';
class HomeDisplay extends StatefulWidget {
  @override
  _HomeDisplayState createState() => _HomeDisplayState();
}

class _HomeDisplayState extends State<HomeDisplay> { 
  int selectedIndex = 0; 
  final widgetOptions = [
    Home(), 
    //Search(), 
    ProfilePage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          //BottomNavigationBarItem(
              //icon: Icon(Icons.search), title: Text('Search')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('Profile')),
        ],
        currentIndex: selectedIndex,
        fixedColor: kPrimaryColor,
        onTap: onItemTapped,
      ),
    );
  } 
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = 0;
    });
  }
}