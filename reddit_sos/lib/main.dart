import 'package:flutter/material.dart';
import 'package:reddit_sos/screens/login/login.dart';
import './tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: loginScreen(),
      ),
    );
  }
}
