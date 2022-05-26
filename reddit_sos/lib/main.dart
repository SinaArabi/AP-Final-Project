import 'package:flutter/material.dart';
import './tabs_screen.dart';


void main() {
  runApp(defaultPage());
}
class defaultPage extends StatelessWidget {
  const defaultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'defaultPage',
    theme: ThemeData(primaryColor: Color.fromRGBO(66, 165, 245, 1.0),
    accentColor: Color.fromARGB(49, 133, 207, 29),),
    home: tabsScreen(),
    );
  }
}
