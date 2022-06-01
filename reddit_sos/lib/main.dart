import 'package:flutter/material.dart';
import 'package:reddit_sos/comment.dart';
import 'package:reddit_sos/post.dart';
import 'package:reddit_sos/postView.dart';
import 'package:reddit_sos/user.dart';
import './tabs_screen.dart';
import './subReddit.dart';
import './subRedditPage.dart';
import './feed.dart';

void main() {
  runApp(defaultPage());
}

class defaultPage extends StatelessWidget {
  // const defaultPage({Key? key}) : super(key: key);
  post myPost = new post(
      subReddit('Fifa22', "assets/images/7070023.jpg", 56),
      new user('Sina', [], "assets/images/7070023.jpg"),
      DateTime.now(),
      "Fifa update",
      "we are all hyped for the World Cup update!",
      18,
      2,
      2, [
    new comment(new user("Shrek", [], "assets/images/shrek.jpg"),
        "wow thats great!", 6, 1, DateTime.now()),
    new comment(
        new user("Khar", [], "assets/images/donkey.jpg"),
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).!",
        1,
        2,
        DateTime.now())
  ]);

  List<post> myPosts = [
    new post(
      subReddit('Fifa22', "assets/images/7070023.jpg", 56),
      new user('Sina', [], "assets/images/7070023.jpg"),
      DateTime.now(),
      "Fifa update",
      "we are all hyped for the World Cup update!",
      18,
      2,
      2,
      [
        new comment(new user("Shrek", [], "assets/images/shrek.jpg"),
            "wow thats great!", 6, 1, DateTime.now()),
        new comment(
          new user("Khar", [], "assets/images/donkey.jpg"),
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).!",
          1,
          2,
          DateTime.now(),
        ),
      ],
    ),
    new post(
      subReddit('Gta', "assets/images/gta.jpg", 56),
      new user('Sina', [], "assets/images/7070023.jpg"),
      DateTime.now(),
      "Gta online update",
      "Another one!",
      27,
      1,
      5,
      [
        new comment(new user("Shrek", [], "assets/images/shrek.jpg"),
            "wow thats great!", 6, 1, DateTime.now()),
        new comment(
          new user("Khar", [], "assets/images/donkey.jpg"),
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).!",
          1,
          2,
          DateTime.now(),
        ),
        
      ],
    ),
    new post(
      subReddit('Gta', "assets/images/7070023.jpg", 56),
      new user('Sina', [], "assets/images/7070023.jpg"),
      DateTime.now(),
      "Gta online update",
      "Another one!",
      27,
      1,
      5,
      [
        new comment(new user("Shrek", [], "assets/images/shrek.jpg"),
            "wow thats great!", 6, 1, DateTime.now()),
        new comment(
          new user("Khar", [], "assets/images/donkey.jpg"),
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).!",
          1,
          2,
          DateTime.now(),
        ),
        
      ],
    ),
    new post(
      subReddit('Gta', "assets/images/gta.jpg", 56),
      new user('Sina', [], "assets/images/7070023.jpg"),
      DateTime.now(),
      "Gta online update",
      "Another one!",
      27,
      1,
      5,
      [
        new comment(new user("Shrek", [], "assets/images/shrek.jpg"),
            "wow thats great!", 6, 1, DateTime.now()),
        new comment(
          new user("Khar", [], "assets/images/donkey.jpg"),
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).!",
          1,
          2,
          DateTime.now(),
        ),
        
      ],
    ),
    new post(
      subReddit('Gta', "assets/images/gta.jpg", 56),
      new user('Sina', [], "assets/images/7070023.jpg"),
      DateTime.now(),
      "Gta online update",
      "Another one!",
      27,
      1,
      5,
      [
        new comment(new user("Shrek", [], "assets/images/shrek.jpg"),
            "wow thats great!", 6, 1, DateTime.now()),
        new comment(
          new user("Khar", [], "assets/images/donkey.jpg"),
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).!",
          1,
          2,
          DateTime.now(),
        ),
        
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'defaultPage',
      theme: ThemeData(
        selectedRowColor: Colors.grey.shade900,
        primaryColor: Color(0xff121110),
      ),
      home:
          // postView(myPost),
          feed(myPosts),
    );
  }
}
