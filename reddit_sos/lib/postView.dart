import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:reddit_sos/icons.dart';
import 'main.dart';
import './post.dart';
import './commentDisplay.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reddit_sos/feed.dart';
import 'package:reddit_sos/icons.dart';
import 'package:reddit_sos/subReddit.dart';
import 'package:reddit_sos/subRedditPage.dart';
import 'package:reddit_sos/tabs_screen.dart';
import './post.dart';

class postView extends StatelessWidget {
  

  final post chosenPost;
  postView(this.chosenPost);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(icon: Icon(Icons.arrow_back_rounded), onPressed: () {Navigator.pushNamed(context, tabsScreen.id );} ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(Icons.notifications),
                Icon(Icons.more_horiz),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
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
                      chosenPost.postSource.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  "r/" + chosenPost.postSource.subName,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      "u/" + chosenPost.poster.UserName,
                      style: TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                    Text(
                      " . " + DateFormat.yMMMEd().format(chosenPost.postDate),
                      style: TextStyle(color: Colors.blueAccent),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    chosenPost.postTitle,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    chosenPost.postContent,
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
                          label: Text(chosenPost.upVotes.toString()),
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
                          label: Text(chosenPost.commentsCounter.toString()),
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
              Expanded(
                child: ListView.builder(
                    itemCount: chosenPost.commentsCounter,
                    itemBuilder: (context, index) {
                      return commentComponent(chosenPost.postComments[index]);
                    }),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: TextField(
                      enabled: false,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          labelText: 'Add a comment',
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          labelStyle: TextStyle(color: Colors.white)),
                      onChanged: (value) => {} //add comment function,
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
