import 'package:flutter/material.dart';
import './user.dart';

class comment {
  user commentposter;
  String commentContent;
  int upVotes;
  int downVotes;
  comment(
      this.commentposter, this.commentContent, this.upVotes, this.downVotes);
}
