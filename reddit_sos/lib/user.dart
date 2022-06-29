import './subReddit.dart';

class user {
  String userName;
  String email;
  String passWord;
  List<subReddit> joinedSubReddits;
  String profilePic;
  user(this.userName, this.email, this.passWord, this.joinedSubReddits, this.profilePic);
}
