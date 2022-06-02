import 'package:reddit_sos/post.dart';

class subReddit {
  String subId;
  String image;
  int members;
  List <post> subRedditPosts;
  String aboutSub;
  subReddit(this.subId, this.image, this.members, this.aboutSub, this.subRedditPosts);
}
