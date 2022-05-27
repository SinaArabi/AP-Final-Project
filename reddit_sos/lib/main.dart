import 'package:flutter/material.dart';
import 'package:reddit_sos/post.dart';
import 'package:reddit_sos/postView.dart';
import 'package:reddit_sos/user.dart';
import './tabs_screen.dart';
import './subReddit.dart';
import './subRedditPage.dart';

void main() {
  runApp(defaultPage());
}

class defaultPage extends StatelessWidget {
  // const defaultPage({Key? key}) : super(key: key);
  post myPost = new post(
       subReddit(
          'Fifa22',
          ".\assets\images\7070023.jpg",
          56),
      new user('Sina', []),
      DateTime.now(), "Fifa update",
      "we are all hyped for the World Cup update!",
      18,
      2,
      0,
      []);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'defaultPage',
      theme: ThemeData(
        selectedRowColor: Colors.grey.shade900,
        primaryColor: Color(0xff121110),
      ),
      home: postView(myPost),
    );
  }
}
