import 'package:reddit_sos/comment.dart';
import 'package:reddit_sos/user.dart';

import './subReddit.dart';

class post {
  subReddit postSource;
  user poster;
  DateTime postDate;
  String postTitle;
  String postContent;
  int upVotes;
  int downVotes;
  int commentsCounter;
  List<comment> postComments;
  post(this.postSource, this.poster, this.postDate, this.postTitle, this.postContent,
      this.upVotes, this.downVotes, this.commentsCounter, this.postComments);

  void addComment(String commentContent){
    //...
  }    
}
