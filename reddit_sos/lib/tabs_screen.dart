import 'package:flutter/material.dart';
import 'package:reddit_sos/addPost.dart';
import 'package:reddit_sos/addPost.dart';
import 'package:reddit_sos/comment.dart';
import 'package:reddit_sos/icons.dart';
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

import 'global.dart';
changeTheme() {
  if (isDarked == true) {
    bgColor = Colors.white;
    txtColor = Colors.black;
    tabScreenColor=Colors.black;
  }
  else{
    bgColor=Colors.black;
    txtColor=Colors.white;
    tabScreenColor=Color.fromRGBO(106, 50, 159, 1);
  }
}


class tabsScreen extends StatefulWidget {
  static const String id = "tab_screen";
  List<post> myPosts = [
    new post(
      subReddit('Fifa22', "assets/images/7070023.jpg", 56, "", []),
      new user('Sina','ahmad@gmail.com', 'ahmad123\$', [], "assets/images/7070023.jpg"),
      DateTime.now(),
      "Fifa update",
      "we are all hyped for the World Cup update!",
      18,
      false,
      false,
      2,
      [
        new comment(new user("Shrek",'ahmad@gmail.com', 'ahmad123\$', [], "assets/images/shrek.jpg"),
            "wow thats great!", 6, 1, DateTime.now()),
        new comment(
          new user("Khar",'ahmad@gmail.com', 'ahmad123\$', [], "assets/images/donkey.jpg"),
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).!",
          1,
          2,
          DateTime.now(),
        ),
      ],
    ),
    new post(
      subReddit('Gta', "assets/images/gta.jpg", 56, "", []),
      new user('Sadra','ahmad@gmail.com', 'ahmad123\$', [], "assets/images/7070023.jpg"),
      DateTime.now(),
      "Gta online update",
      "Another one!",
      27,
      false,
      false,
      1,
      [
        new comment(new user("Justin",'ahmad@gmail.com', 'ahmad123\$', [], "assets/images/justin.jpg"),
            "new glitches soming soon!", 6, 1, DateTime.now()),
        new comment(
          new user("Steven",'ahmad@gmail.com', 'ahmad123\$', [], "assets/images/trevor.jpg"),
          "Don't You Ever Not Tell Me Things I Wanna Know!",
          1,
          2,
          DateTime.now(),
        ),
      ],
    ),
    new post(
      subReddit('Programming', "assets/images/pro.jpg", 30, "", []),
      new user('Salar','ahmad@gmail.com', 'ahmad123\$', [], "assets/images/7070023.jpg"),
      DateTime.now(),
      "Flutter discuss",
      "We are happy to announce that a new update for our theme would be released soon!",
      18,
      false,
      false,
      1,
      [
        new comment(new user("Majid",'ahmad@gmail.com', 'ahmad123\$', [], "assets/images/stevejobs.jpg"),
            "That made my day!!!", 6, 1, DateTime.now()),
      ],
    ),
  ];


  List<subReddit> mySubreddits = [
    subReddit(
        'RepOfPls', "assets/images/rop.jpg", 56, "Online gamers commiunity", [
      new post(
        subReddit('Fifa22', "assets/images/7070023.jpg", 56, "", []),
        new user('Sina','ahmad@gmail.com', 'ahmad123\$', [], "assets/images/7070023.jpg"),
        DateTime.now(),
        "Fifa update",
        "we are all hyped for the World Cup update!",
        18,
        false,false,
        2,
        [
          new comment(new user("Shrek",'ahmad@gmail.com', 'ahmad123\$', [], "assets/images/shrek.jpg"),
              "wow thats great!", 6, 1, DateTime.now()),
          new comment(
            new user("Khar",'ahmad@gmail.com', 'ahmad123\$', [], "assets/images/donkey.jpg"),
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).!",
            1,
            2,
            DateTime.now(),
          ),
        ],
      ),
      new post(
        subReddit('Gta', "assets/images/gta.jpg", 56, "", []),
        new user('Sina','ahmad@gmail.com', 'ahmad123\$', [], "assets/images/7070023.jpg"),
        DateTime.now(),
        "Gta online update",
        "Another one!",
        27,
        false,false,
        1,
        [
          new comment(new user("Shrek",'ahmad@gmail.com', 'ahmad123\$', [], "assets/images/shrek.jpg"),
              "wow thats great!", 6, 1, DateTime.now()),
          new comment(
            new user("Khar", 'ahmad@gmail.com', 'ahmad123\$', [], "assets/images/donkey.jpg"),
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).!",
            1,
            2,
            DateTime.now(),
          ),
        ],
      ),
      new post(
        subReddit('Gta', "assets/images/gta.jpg", 56, "", []),
        new user('Sadra','ahmad@gmail.com', 'ahmad123\$', [], "assets/images/7070023.jpg"),
        DateTime.now(),
        "Gta online update",
        "Another one!",
        27,
        false,false,
        1,
        [
          new comment(new user("Justin",'ahmad@gmail.com', 'ahmad123\$', [], ""), "new glitches soming soon!",
              6, 1, DateTime.now()),
          new comment(
            new user("Steven", 'ahmad@gmail.com', 'ahmad123\$',[], ""),
            "Don't You Ever Not Tell Me Things I Wanna Know!",
            1,
            2,
            DateTime.now(),
          ),
        ],
      ),
      new post(
        subReddit('Gta', "assets/images/gta.jpg", 56, "", []),
        new user('Sina','ahmad@gmail.com', 'ahmad123\$', [], "assets/images/7070023.jpg"),
        DateTime.now(),
        "Gta online update",
        "Another one!",
        27,
        false,false,
        5,
        [
          new comment(new user("Shrek",'ahmad@gmail.com', 'ahmad123\$', [], "assets/images/shrek.jpg"),
              "wow thats great!", 6, 1, DateTime.now()),
          new comment(
            new user("Khar",'ahmad@gmail.com', 'ahmad123\$', [], "assets/images/donkey.jpg"),
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).!",
            1,
            2,
            DateTime.now(),
          ),
        ],
      ),
      new post(
        subReddit('Gta', "assets/images/gta.jpg", 56, "", []),
        new user('Sina','ahmad@gmail.com', 'ahmad123\$', [], "assets/images/7070023.jpg"),
        DateTime.now(),
        "Gta online update",
        "Another one!",
        27,
        false,false,
        1,
        [
          new comment(new user("Shrek",'ahmad@gmail.com', 'ahmad123\$', [], "assets/images/shrek.jpg"),
              "wow thats great!", 6, 1, DateTime.now()),
          new comment(
            new user("Khar",'ahmad@gmail.com', 'ahmad123\$', [], "assets/images/donkey.jpg"),
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).!",
            1,
            2,
            DateTime.now(),
          ),
        ],
      ),
    ]),
    subReddit('Fifa22', "assets/images/7070023.jpg", 56, "", []),
    subReddit("GOT", 'assets/images/got.jpg', 1001, "", []),
    subReddit("Programmers", 'assets/images/prog.jpg', 20212, "", []),
    subReddit("GTA V", "assets/images/gta.jpg", 5000000, "", []),
  ];

  @override
  State<tabsScreen> createState() => _tabsScreenState();
}

class _tabsScreenState extends State<tabsScreen> {
  int _selectedPageIndex = 0;
  PageController pageController = new PageController();

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
    pageController.jumpToPage(_selectedPageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reddit'),
        backgroundColor:tabScreenColor,
        leading: IconButton(
          alignment: Alignment.centerRight,
          icon: Icon(Icons.nightlight),

          onPressed: () {
            setState(() {
              isDarked = !isDarked;
            });


            changeTheme();

          },
        ),
      ),
      body: PageView(
        controller: pageController,
        children: [
          feed(widget.myPosts),
          subRedditPage(widget.mySubreddits),
          addPost(widget.mySubreddits),
          Setting(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: bgColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: txtColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Votes.th_thumb,
              color: txtColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: txtColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              color: txtColor,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedPageIndex,
        selectedItemColor: Theme.of(context).selectedRowColor,
        unselectedItemColor: Theme.of(context).accentColor,
        onTap: _selectPage,
      ),
    );
  }
}
