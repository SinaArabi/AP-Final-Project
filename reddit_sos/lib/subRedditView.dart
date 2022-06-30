import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:reddit_sos/feed.dart';
import 'package:reddit_sos/icons.dart';
import 'package:reddit_sos/subReddit.dart';
import 'package:reddit_sos/subRedditPage.dart';
import 'package:reddit_sos/tabs_screen.dart';
import './post.dart';

class subRedditView extends StatefulWidget {
  static const String id = "_screen";
  final subReddit chosenSubReddit;
  subRedditView(this.chosenSubReddit);

  @override
  State<subRedditView> createState() => _subRedditViewState();
}

class _subRedditViewState extends State<subRedditView> {
  bool isJoined = false;
  subRedditCard() {
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          Text("r/" + widget.chosenSubReddit.subName,
              style: TextStyle(color: Colors.white, fontSize: 18)),
        ],
      ),
      trailing: Wrap(
        children: [
          IconButton(
            icon: Icon(
              Icons.notifications_none_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              backgroundColor: isJoined ? Colors.teal : Colors.purple,
            ),
            onPressed: () {
              setState(() {
                isJoined = !isJoined;
              });
              sendInfoToServer(widget.chosenSubReddit.subName, isJoined);
            },
            child: isJoined
                ? Text("Joined")
                : Text("Join"), //need to check if user is joined or not!
          ),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            widget.chosenSubReddit.members.toString() + " members",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          Text(
            widget.chosenSubReddit.aboutSub,
            style: TextStyle(color: Colors.white, fontSize: 14),
          )
        ],
      ),
    );
  }

  subRedditPostComponent(post thePost) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(left: 0, right: 0),
              leading: Container(
                width: 60,
                height: 60,
                child: ClipOval(
                  child: Image.asset(
                    thePost.postSource.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Row(
                children: [
                  Text(
                    "u/" + thePost.poster.userName,
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  ),
                  Text(
                    " . " + DateFormat.yMMMEd().format(thePost.postDate),
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.more_horiz),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  thePost.postTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  thePost.postContent,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      TextButton.icon(
                        icon: Icon(
                          Votes.up_bold,
                        ),
                        label: Text(thePost.upVotes.toString()),
                        onPressed: () {},
                        style: TextButton.styleFrom(primary: Colors.white),
                      ),
                      IconButton(
                        icon: Icon(
                          Votes.down_bold,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TextButton.icon(
                        icon: Icon(
                          Votes.comment_alt,
                          size: 18,
                        ),
                        label: Text(thePost.commentsCounter.toString()),
                        onPressed: () {},
                        style: TextButton.styleFrom(primary: Colors.white),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TextButton.icon(
                        icon: Icon(
                          Votes.upload,
                          size: 18,
                        ),
                        label: Text("Share"),
                        onPressed: () {},
                        style: TextButton.styleFrom(primary: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pushNamed(context, tabsScreen.id);
            }),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabled: false,
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.purple, width: 2.0)),
                        labelText: "r/" + widget.chosenSubReddit.subName,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                Icon(Votes.upload_1),
                Icon(Icons.more_horiz),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: 80,
                height: 80,
                child: ClipOval(
                  child: Image.asset(
                    widget.chosenSubReddit.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              subRedditCard(),
              DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    Container(
                      child: TabBar(
                          labelColor: Colors.purple,
                          unselectedLabelColor: Colors.white,
                          tabs: [
                            Tab(child: Text("Posts")),
                            Tab(child: Text("About")),
                          ]),
                    ),
                    SizedBox(
                      height: 400,
                      child: TabBarView(
                        children: <Widget>[
                          Container(
                            child: ListView.builder(
                                itemCount: widget
                                    .chosenSubReddit.subRedditPosts.length,
                                itemBuilder: (context, index) {
                                  return subRedditPostComponent(widget
                                      .chosenSubReddit.subRedditPosts[index]);
                                }),
                          ),
                          Container(
                            child: Center(
                              child: Text(widget.chosenSubReddit.aboutSub,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  sendInfoToServer(String subReddit, bool isJoined) async {
    String request = "joinSubreddit\n$subReddit/$isJoined\u0000";
    await Socket.connect("10.0.2.2", 1111).then((ServerSocket) {
      ServerSocket.write(request);
      ServerSocket.flush();
      ServerSocket.listen((response) {});
    });
  }
}
