import 'package:flutter/material.dart';
import 'package:shamsi_date/shamsi_date.dart';
import './user.dart';

class comment {
  user commentposter;
  String commentContent;
  int upVotes;
  int downVotes;
  Jalali commentDate;
  comment(
      this.commentposter, this.commentContent, this.upVotes, this.downVotes, this.commentDate);
}
