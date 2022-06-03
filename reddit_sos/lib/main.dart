import 'package:flutter/material.dart';
import 'package:reddit_sos/screens/EditProfile.dart';
import 'package:reddit_sos/screens/welcome_screen.dart';
import 'package:reddit_sos/screens/login_screen.dart';
import 'package:reddit_sos/screens/registration_screen.dart';
import 'package:reddit_sos/setting.dart';

void main() => runApp(Reddit());

class Reddit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: Setting.id,
      routes: {
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
        RegistrationScreen.id:(context)=>RegistrationScreen(),
        Setting.id:(context)=>Setting(),
        EditProfile.id:(context)=>EditProfile(),

      },
    );
  }
}
