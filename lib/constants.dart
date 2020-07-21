import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xffA65C5C);
const kBackgroundColor = Color(0xffF4E7E7);
const kTextFieldDecoration = InputDecoration( 
  hintStyle: TextStyle(color: kPrimaryColor,),
  hintText: 'Enter your email',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: UnderlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);  
const kIconDecoration = Icon(Icons.menu); 
