import 'package:flutter/material.dart';
//import 'package:main_app/authentication/auth.dart';
import 'package:main_app/authentication/login.dart';
import 'package:main_app/screens/home.dart';
import 'package:main_app/authentication/register.dart';
import 'package:main_app/screens/welcome.dart';
import 'package:main_app/screens/communitypage.dart'; 
import 'package:main_app/screens/profilepage.dart'; 
import 'package:main_app/screens/chat_screen.dart';
// import 'package:main_app/wrapper.dart';
// import 'package:provider/provider.dart';
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
        CommunityProfile.id: (context) => CommunityProfile(), 
        ProfilePage.id: (context) => ProfilePage(),  
        ChatScreen.id: (context) => ChatScreen(),
      },
    ); 
    // // ignore: dead_code
    // return StreamProvider.value(
    //   value: Auth().user,
    //   catchError: (_, __) => null,
    //   child: MaterialApp(
    //     home: Wrapper(),
    //   ),
    // );
    
  }
}
