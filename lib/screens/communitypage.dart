import 'package:flutter/material.dart';
import 'package:main_app/constants.dart';
import 'package:main_app/screens/chat_screen.dart';
import 'package:main_app/screens/news.dart'; 
//import 'package:main_app/screens/news.dart';

class CommunityPage extends StatelessWidget { 
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Community Profile", 
      debugShowCheckedModeBanner: false,
      home: CommunityPage(),
    );
  }
} 
class CommunityProfile extends StatelessWidget { 
 static const String id = 'CommunityProfile';
  
  @override
  Widget build(BuildContext context) { 
    return Scaffold( 
        
        body:  SafeArea (  
    child: SingleChildScrollView(
          child: Column(children: <Widget>[
              Image.asset(
                'images/avatartla.png' ,
                 height: 200,
                width:300,
              ), 
                     Card(
                    margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                    clipBehavior: Clip.antiAlias,
                    color: Colors.white,
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 22.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(

                              children: <Widget>[
                                Text(
                                  "Episodes",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "61",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.pinkAccent,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(

                              children: <Widget>[
                                Text(
                                  "Followers",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "28.5K",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.pinkAccent,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(

                              children: <Widget>[
                                Text(
                                  "Updates",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "10",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: kPrimaryColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ), 
                       
                        Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 16.0),
                          child: Expanded( 
                            
                              child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                    "Bio:",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 28.0
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('The world is divided into four nations -- the Water Tribe, the Earth Kingdom, the Fire Nation and and the Air Nomads -- each represented by a natural element for which the nation is named. Benders have the ability to control and manipulate the element from their nation. Only the Avatar is the master of all four elements. The ruthless Fire Nation wants to conquer the world but the only bender who has enough power, the Avatar, has disappeared ... until now. His tribe soon discovers that Aang is the long-lost Avatar. Now Katara and Sokka must safeguard Aang on his journey to master all four elements and save the world from the Fire Nation.',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black,
                                    letterSpacing: 2.0,
                                  ),
                                ), 
                               Row(
                                 children: <Widget>[
                                   Card(child: 
                                    Container( child: 
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: FlatButton(
                                          onPressed: ()  =>
                                           Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => News())) , 
                                          child: Text(
                                            'News'
                                            )
                                          ),
                                      ) 
                                   ),
                                   ),
                                 
                                Card(child: 
                                Container( child: 
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FlatButton(
                                      onPressed:  ()  =>
                                           Navigator.push(
                                              context, MaterialPageRoute(builder: (context) => ChatScreen())), 
                                      child: Text(
                                        'Talk'
                                        )
                                      ),
                                  ) 
                               ),
                               ), 
                                Card(child: 
                                Container( child: 
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FlatButton(
                                      onPressed: null, 
                                      child: Text(
                                        'Watch'
                                        )
                                      ),
                                  ) 
                               ),
                               ), 
                              ], 
                              ),
                              ],
                            ),
                          ), 
                        ),
                     ),
                ],
              ),
    ),
          ),
        );
  } 
}