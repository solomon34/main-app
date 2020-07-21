import 'package:flutter/material.dart';
import 'package:main_app/constants.dart';
import 'package:splashscreen/splashscreen.dart'; 
import 'package:main_app/screens/mainpage.dart'; 
// Everything begins with main() function 
void main() => runApp(MaterialApp(
      home: HomeView(),
    ));

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen( 
      seconds: 5,
      backgroundColor: kBackgroundColor,
      title: Text('Loading'),
      loaderColor: kPrimaryColor, 
      photoSize: 100.0, 
      navigateAfterSeconds: MainPage(),
    );
  }
}

