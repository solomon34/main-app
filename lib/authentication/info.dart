
import 'package:flutter/material.dart';
import 'package:main_app/constants.dart'; 
import 'package:main_app/authentication/login.dart'; 
import 'package:main_app/authentication/register.dart'; 
import 'package:main_app/screens/home.dart';
class Info extends StatefulWidget { 
  static const String id = 'Info';
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> { 
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
          children: [
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Finish Set Up',
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
                        
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Name'
                        ),
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
                            hintText: 'Username'),
                      ),
                     
                       
                      SizedBox(
                        height:50,
                      ),
                    ],
                  ),
                ), 
                 Row(
              children: <Widget>[
                Expanded(
                                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(29),
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        onPressed: () async { 
                          Navigator.pushNamed(context, Register.id);

//                  final newUser = await _auth.createUserWithEmailAndPassword(
//                      email: email, password: password);
                        },
                        child: Text(
                          '<- Back',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        color: kPrimaryColor,
                        splashColor: kPrimaryColor,
                      ),
                    ),
                  ),
                ),  
                Expanded(
                                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(29),
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        onPressed: () async {   

                          Navigator.pushNamed(context, Home.id);

//                  final newUser = await _auth.createUserWithEmailAndPassword(
//                      email: email, password: password);
                        },
                        child: Text(
                          'Finish Set Up',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        color: kPrimaryColor,
                        splashColor: kPrimaryColor,
                      ),
                    ),
                  ),
                ),  
              ], 
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
