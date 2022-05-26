import 'dart:html';

import 'package:flutter/material.dart';

class tabsScreen extends StatefulWidget {
  const tabsScreen({Key? key}) : super(key: key);

  @override
  State<tabsScreen> createState() => _tabsScreenState();
}

class _tabsScreenState extends State<tabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(appBar: AppBar(title: Text('Menu'), bottom: TabBar(tabs: [
      Tab(
      icon: Icon(Icons.home,),
      text: 'Home',),
    Tab(
      icon: Icon(Icons.search),
    text: 'Search',), //not final
    Tab(
      icon: Icon(Icons.add,),
    text: 'Add',),
    Tab(
      icon: Icon(Icons.message,),text: 'Message',),
    Tab(
      icon: Icon(Icons.notifications_none_outlined), 
      text: 'Alert',),
    ]) , ), 
    body: TabBarView(children: [
      //all pages widget should be added here
    ]),
    ),);
    
  }
}