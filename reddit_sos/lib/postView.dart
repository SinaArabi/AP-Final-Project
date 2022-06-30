import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:reddit_sos/addComment.dart';
import 'package:reddit_sos/global.dart';
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

class postView extends StatefulWidget {
  final post chosenPost;
  postView(this.chosenPost);

  @override
  State<postView> createState() => _postViewState();
}

class _postViewState extends State<postView> {
  void _upVote(bool isUpVotePressed, bool isDownVotePressed) {
    if (!isUpVotePressed) {
      setState(() {
        widget.chosenPost.upVoteIsPressed = !widget.chosenPost.upVoteIsPressed;
        widget.chosenPost.downVoteIsPressed = false;
        widget.chosenPost.upVotes++;
      });
    }
  }

  void _downVote(bool isUpVotePressed, bool isDownVotePressed) {
    if (!isDownVotePressed) {
      setState(() {
        widget.chosenPost.downVoteIsPressed =
            !widget.chosenPost.downVoteIsPressed;
        widget.chosenPost.upVoteIsPressed = false;
        widget.chosenPost.upVotes--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            color: txtColor,
            onPressed: () {
              Navigator.pushNamed(context, tabsScreen.id);
            }),
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
      backgroundColor: bgColor,
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
                      widget.chosenPost.postSource.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  "r/" + widget.chosenPost.postSource.subName,
                  style: TextStyle(
                    color: txtColor,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      "u/" + widget.chosenPost.poster.userName,
                      style: TextStyle(
                        color: tabScreenColor,
                      ),
                    ),
                    Text(
                      " . " +
                          DateFormat.yMMMEd()
                              .format(widget.chosenPost.postDate),
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
                    widget.chosenPost.postTitle,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: txtColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.chosenPost.postContent,
                    style: TextStyle(color: txtColor),
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
                          label: Text(widget.chosenPost.upVotes.toString()),
                          onPressed: () => _upVote(
                              widget.chosenPost.upVoteIsPressed,
                              widget.chosenPost.downVoteIsPressed),
                          style: TextButton.styleFrom(primary:txtColor),
                        ),
                        IconButton(
                          icon: Icon(
                            Votes.down_bold,
                            color: txtColor,
                          ),
                          onPressed: () => _downVote(
                              widget.chosenPost.upVoteIsPressed,
                              widget.chosenPost.downVoteIsPressed),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton.icon(
                          icon: Icon(
                            Votes.comment_alt,
                            size: 18,
                          ),
                          label: Text(
                              widget.chosenPost.commentsCounter.toString()),
                          onPressed: () {},
                          style: TextButton.styleFrom(primary: txtColor),
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
                          style: TextButton.styleFrom(primary: txtColor),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: widget.chosenPost.commentsCounter,
                    itemBuilder: (context, index) {
                      return commentComponent(
                          widget.chosenPost.postComments[index]);
                    }),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: FractionallySizedBox(
                  widthFactor:
                      1, // means 100%, you can change this to 0.8 (80%)
                  child: RaisedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => addComment(widget.chosenPost),
                      ),
                    ),
                    color: tabScreenColor,
                    child: Text('Add Comment',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
