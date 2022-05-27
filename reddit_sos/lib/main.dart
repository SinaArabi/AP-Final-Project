import 'package:flutter/material.dart';
import './tabs_screen.dart';
import './subReddit.dart';
import './subRedditPage.dart';

void main() {
  runApp(defaultPage());
}

class defaultPage extends StatelessWidget {
  const defaultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'defaultPage',
      theme: ThemeData(
        selectedRowColor: Colors.grey.shade900,
        primaryColor: Color(0xff121110),
      ),
      home: tabsScreen(),
    );
  }
}
