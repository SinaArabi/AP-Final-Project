import 'package:reddit_sos/post.dart';

class subReddit {
  String subName;
  String image;
  int members;
  List <post> subRedditPosts;
  String aboutSub;
  subReddit(this.subName, this.image, this.members, this.aboutSub, this.subRedditPosts);
}
