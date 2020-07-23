import 'package:flutter/material.dart';
import 'package:main_app/authentication/login.dart';
import 'package:main_app/screens/home.dart';
import 'package:main_app/authentication/register.dart';
import 'package:main_app/screens/welcome.dart';
import 'package:main_app/authentication/info.dart';
import 'package:main_app/screens/communitypage.dart';
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Welcome.id,
      routes: {
        Home.id: (context) => Home(),
        Login.id: (context) => Login(),
        Register.id: (context) => Register(),
        Welcome.id: (context) => Welcome(),
        Info.id: (context) => Info(), 
        CommunityProfile.id: (context) => CommunityProfile(),
      },
    );
  }
}
