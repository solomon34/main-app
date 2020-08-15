
import 'package:flutter/material.dart';
//import 'package:main_app/authentication/register.dart';
import 'package:main_app/constants.dart'; 
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:main_app/authentication/user.dart';  
//import 'package:main_app/screens/home.dart';

class Search extends StatefulWidget { 
  static const String id = 'Search';
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> { 
  // variables for user email & password
  final auth = FirebaseAuth.instance;
  String email;
  String password; 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Search',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                    TextField( 
                    obscureText: false,
                    onChanged: (value) { 
                      password = value;
                    },
                    
                    decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Search'),
                  ), 
                  SizedBox(
                    height:50,
                  ),
                ],
              ),
            ), 
          ],
        ), 
        
      ), 
    );
  }
}
