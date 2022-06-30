import 'package:reddit_sos/comment.dart';
import 'package:reddit_sos/user.dart';
import 'package:shamsi_date/shamsi_date.dart';

import './subReddit.dart';

class post {
  subReddit postSource;
  user poster;
  Jalali postDate;
  String postTitle;
  String postContent;
  int upVotes;
  bool upVoteIsPressed;
  bool downVoteIsPressed;
  int commentsCounter;
  List<comment> postComments;
  post(this.postSource, this.poster, this.postDate, this.postTitle, this.postContent,
      this.upVotes, this.upVoteIsPressed, this.downVoteIsPressed, this.commentsCounter, this.postComments);

  void addComment(String commentContent){
    //...
  }    
}
