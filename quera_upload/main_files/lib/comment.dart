import 'package:flutter/material.dart';
import './user.dart';

class comment {
  user commentposter;
  String commentContent;
  int upVotes;
  int downVotes;
  DateTime commentDate;
  comment(
      this.commentposter, this.commentContent, this.upVotes, this.downVotes, this.commentDate);
}
