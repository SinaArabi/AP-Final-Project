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
    home: tabsScreen(),
    );
  }
}
