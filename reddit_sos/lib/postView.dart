import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:reddit_sos/icons.dart';

import './post.dart';
import './commentDisplay.dart';

class postView extends StatelessWidget {
  // const postView({Key? key}) : super(key: key);

  final post chosenPost;
  postView(this.chosenPost);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: Icon(Icons.arrow_back_rounded),
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
                  "r/" + chosenPost.postSource.subId,
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
                    SizedBox(width: 30),
                    Text(
                      DateFormat.yMMMEd().format(chosenPost.postDate),
                      style: TextStyle(color: Colors.blueAccent),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    chosenPost.postTitle,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
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
                        Icon(
                          Votes.down_bold,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton.icon(
                          icon: Icon(Votes.comment_inv),
                          label: Text(chosenPost.commentsCounter.toString()),
                          onPressed: () {},
                          style: TextButton.styleFrom(primary: Colors.white),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextButton.icon(
                          icon: Icon(Votes.upload),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
