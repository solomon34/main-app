import 'package:flutter/material.dart';
import 'package:main_app/authentication/register.dart';
import 'package:main_app/authentication/user.dart';
import 'package:main_app/screens/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    if (user == null) {
      return Register();
    } else {
      return Home();
    }
  }
}