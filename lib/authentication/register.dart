
import 'package:flutter/material.dart';
import 'package:main_app/constants.dart'; 
import 'package:main_app/authentication/login.dart'; 
import 'package:main_app/authentication/info.dart';
class Register extends StatefulWidget { 
  static const String id = 'Register';
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> { 
  // variables for user email & password
  
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
              'Create an Account',
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
                        hintText: 'Enter password'),
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
                        hintText: 'Confirm password'),
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
                     Navigator.pushNamed(context, Info.id);
//                  final newUser = await _auth.createUserWithEmailAndPassword(
//                      email: email, password: password);
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  color: kPrimaryColor,
                  splashColor: kPrimaryColor,
                ),
              ),
            ), 
            FlatButton(
              onPressed: (){
                 Navigator.pushNamed(context, Login.id);
              },
             child: Text('Already Have an Account, Sign In!')
             
              ,)
          ],
        ),
      ),
    );
  }
}
