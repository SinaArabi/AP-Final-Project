import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:reddit_sos/icons.dart';

import './post.dart';
import './comment.dart';
import "./global.dart";

commentComponent(comment cm) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      ListTile(
        leading: Container(
          width: 60,
          height: 60,
          child: ClipOval(
            child: Image.asset(
              cm.commentposter.profilePic,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          cm.commentposter.userName +
              " . " +
              DateFormat.yMMMEd().format(cm.commentDate),
          style: TextStyle(
            color: txtColor,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(20),
        child: Text(
          cm.commentContent,
          style: TextStyle(
            color: txtColor,
          ),
        ),
      ),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
              color: txtColor,
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.reply_outlined),
              label: Text("Reply"),
              style: TextButton.styleFrom(primary: txtColor),
            ),
            TextButton.icon(
              icon: Icon(
                Votes.up_bold,
              ),
              label: Text(cm.upVotes.toString()),
              onPressed: () {},
              style: TextButton.styleFrom(primary: txtColor),
            ),
            IconButton(
              icon: Icon(
                Votes.down_bold,
                color: txtColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),

    ],
  );
}
