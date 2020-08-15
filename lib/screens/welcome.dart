import 'package:flutter/material.dart';
import 'package:main_app/constants.dart'; 
//import 'package:flutter_icons/flutter_icons.dart';
import 'package:main_app/authentication/login.dart'; 
import 'package:main_app/authentication/register.dart'; 

class Welcome extends StatelessWidget {
  static const String id = 'Welcome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      backgroundColor: kBackgroundColor,
      body: SafeArea( 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[  
            Row(children: <Widget>[   
              Container(  
                color: kBackgroundColor, 
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0,),
                child:Padding( 
                  padding: EdgeInsets.symmetric(vertical:25.0, horizontal:50.0,),
                  child: Row(
                  children: <Widget>[
                    
                     SizedBox(
                      width: 60.0,
                      ),
                    
                    
                    Text(
                      'Nogo', 
                      style: TextStyle(
                      color: kPrimaryColor, 
                      fontFamily: 'SourceSansPro-Light',  
                      fontSize: 25.0,  
                      
                            ),
                           ),  
                    SizedBox(
                      width: 70.0,
                    ),
                    IconButton(icon: kIconDecoration, onPressed: () {


                    })      
                   
                     ],
                    ),
                  ),
                ), 
              ],
            ),    
            Divider( 
              thickness: 5.0, 
              color: kPrimaryColor, 
              height: 40.0, 
              indent: 40.0, 
              endIndent: 40.0,
            ),
             
            Text(
                        'Welcome To NoGo, Please Create',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ), 
          Text(
                        'an Account or Sign In',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ), 
          SizedBox(height:50),
          FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color:kPrimaryColor)),
                    
                    textColor: kPrimaryColor,
                    padding: EdgeInsets.all(10.0),
                    onPressed: () {
                      Navigator.pushNamed(context, Login.id);
                    },
                    child: Text(
                      "Login".toUpperCase(),
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                    SizedBox(height:50),
                    FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: kPrimaryColor)),
                        textColor: kPrimaryColor,
                        padding: EdgeInsets.all(10.0),
                        onPressed: () { 
                          Navigator.pushNamed(context, Register.id);

                        },
                        child: Text(
                          "Sign Up".toUpperCase(),
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
          ],  
        ),  
        
    ), 
    );
  }
}
 //IconButton(icon: kIconDecoration, onPressed: null) Why cant I add in the widget?