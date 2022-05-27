import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/foundation/key.dart';

import './post.dart';

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
          child: ListTile(
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
        ),
      ),
    );
  }
}
