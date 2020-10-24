import 'package:flutter/material.dart';
import 'package:login/models/user.dart';
import 'package:provider/provider.dart';
import 'package:login/screens/signin_screen.dart';
import 'package:login/screens/home_screen.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if (user == null) {
      return SignInScreen();
    } else {
      return HomeScreen();
    }
  }
}
