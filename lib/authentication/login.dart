
import 'package:flutter/material.dart';
import 'package:main_app/authentication/register.dart';
import 'package:main_app/constants.dart'; 
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:main_app/authentication/user.dart';  
import 'package:main_app/screens/home.dart';

class Login extends StatefulWidget { 
  static const String id = 'Login';
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> { 
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
              'Login',
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
                    onChanged: (value) {
                      email = value;
                    },
                    
                    decoration: kTextFieldDecoration,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                    TextField( 
                    obscureText: true,
                    onChanged: (value) { 
                      password = value;
                    },
                    
                    decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Password'),
                  ), 
                  SizedBox(
                    height:50,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  onPressed: () async {
                   try{
                    final user = await auth.signInWithEmailAndPassword(email: email, password: password); 
                    if (user != null) {
                        Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => HomePag()));
                        
                      } else{
                        print('no user');
                      }
                   }catch(e){
                     print(e);
                   }
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  color: kPrimaryColor,
                  splashColor: kPrimaryColor,
                ),
              ),
            ), 
            FlatButton(
              onPressed: (){
                 Navigator.pushNamed(context, Register.id);
              },
             child: Text("Don't Have an Acount Yet. Register Now!")
             
              ,)
          ],
        ),
      ),
    );
  }
}
