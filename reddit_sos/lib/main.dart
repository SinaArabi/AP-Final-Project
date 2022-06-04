import 'package:flutter/material.dart';
import 'package:reddit_sos/about.dart';
import 'package:reddit_sos/addPost.dart';
import 'package:reddit_sos/addPost.dart';
import 'package:reddit_sos/comment.dart';
import 'package:reddit_sos/post.dart';
import 'package:reddit_sos/postView.dart';
import 'package:reddit_sos/subRedditView.dart';
import 'package:reddit_sos/user.dart';
import './tabs_screen.dart';
import './subReddit.dart';
import './subRedditPage.dart';
import './feed.dart';
import 'package:reddit_sos/screens/EditProfile.dart';
import 'package:reddit_sos/screens/welcome_screen.dart';
import 'package:reddit_sos/screens/login_screen.dart';
import 'package:reddit_sos/screens/registration_screen.dart';
import 'package:reddit_sos/setting.dart';

void main() => runApp(Reddit());

class Reddit extends StatelessWidget {
  
  post myPost = new post(
      subReddit('Fifa22', "assets/images/7070023.jpg", 56, "", []),
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
      subReddit('Fifa22', "assets/images/7070023.jpg", 56, "", []),
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
      subReddit('Gta', "assets/images/gta.jpg", 56, "", []),
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
      subReddit('Gta', "assets/images/7070023.jpg", 56, "", []),
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
      subReddit('Gta', "assets/images/gta.jpg", 56, "", []),
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
      subReddit('Gta', "assets/images/gta.jpg", 56, "", []),
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

  List<subReddit> mySubreddits = [
    subReddit('Gta', "assets/images/gta.jpg", 56,
        "a bunch of idol people playing weird characters", [
      new post(
        subReddit('Fifa22', "assets/images/7070023.jpg", 56, "", []),
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
        subReddit('Gta', "assets/images/gta.jpg", 56, "", []),
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
        subReddit('Gta', "assets/images/7070023.jpg", 56, "", []),
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
        subReddit('Gta', "assets/images/gta.jpg", 56, "", []),
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
        subReddit('Gta', "assets/images/gta.jpg", 56, "", []),
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
    ]),
    subReddit('Fifa22', "assets/images/7070023.jpg", 56, "", []),
    subReddit(
        "GOT",
        'https://movieposterhd.com/wp-content/uploads/2019/03/Game-of-Thrones-8-Season-iPhone-6-Wallpaper.jpg',
        1001,
        "", []),
    subReddit(
        "Programmers",
        'https://images.unsplash.com/photo-1605379399642-870262d3d051?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1506',
        20212,
        "", []),
    subReddit(
        "GTA V",
        "https://images.unsplash.com/photo-1621364525332-f9c381f3bfe8?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032",
        5000000,
        "", []),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      // WelcomeScreen.id,
      routes: {
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginScreen.id:(context)=>LoginScreen(),
        RegistrationScreen.id:(context)=>RegistrationScreen(),
        Setting.id:(context)=>Setting(),
        EditProfile.id:(context)=>EditProfile(),
        feed.id:(context) => feed(myPosts),
        tabsScreen.id:(context) => tabsScreen(),
        subRedditPage.id:(context) => subRedditPage(mySubreddits),
        addPost.id:(context) => addPost(mySubreddits),
        subRedditView.id:(context) => subRedditView(mySubreddits.first),
        About.id:(context) => About(),

      },
      debugShowCheckedModeBanner: false,
      title: 'defaultPage',
      theme: ThemeData(
        selectedRowColor: Colors.grey.shade900,
        primaryColor: Color(0xff121110),
      ),


    
    );
    
  }
}