import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:reddit_sos/icons.dart';
import 'package:reddit_sos/postView.dart';
import 'package:reddit_sos/tabs_screen.dart';
import 'package:shamsi_date/shamsi_date.dart';
import './post.dart';
import './commentDisplay.dart';
import './global.dart';
String format1(Jalali d) {
  final f = d.formatter;

  return '${f.wN} ${f.d} ${f.mN} ${f.yy}';
}

class feed extends StatefulWidget {
  static const String id = "feed_screen";
  final List<post> posts;
  feed(this.posts);

  @override
  State<feed> createState() => _feedState();
}

class _feedState extends State<feed> {
  List<post> _foundPosts = [];
  initState() {
    _foundPosts = widget.posts;
    super.initState();
  }

  void _runSearch(String enteredKeyword) {
    List<post> searchedPosts = [];
    if (enteredKeyword.isEmpty) {
      searchedPosts = widget.posts;
    } else {
      searchedPosts = widget.posts
          .where((post) => post.postTitle
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundPosts = searchedPosts;
    });
  }

  postComponent(post thePost, context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => postView(thePost),
                  ),
                );
              },
              contentPadding: EdgeInsets.only(left: 0, right: 0),
              leading: Container(
                width: 60,
                height: 60,
                child: ClipOval(
                  child: Image.asset(
                    thePost.postSource.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                "r/" + thePost.postSource.subName,
                style: TextStyle(
                  color: txtColor,
                ),
              ),
              subtitle: Row(
                children: [
                  Text(
                    "u/" + thePost.poster.userName,
                    style: TextStyle(
                      color: tabScreenColor,
                    ),
                  ),
                  Text(
                    " . " + format1(j),
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.more_horiz),
                color: txtColor,
                onPressed: () {},
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  thePost.postTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: txtColor),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  thePost.postContent,
                  style: TextStyle(color: txtColor),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      TextButton.icon(
                        icon: Icon(
                          Votes.up_bold,
                        ),
                        label: Text(thePost.upVotes.toString()),
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
                      SizedBox(
                        width: 20,
                      ),
                      TextButton.icon(
                        icon: Icon(
                          Votes.comment_alt,
                          size: 18,
                        ),
                        label: Text(thePost.commentsCounter.toString()),
                        onPressed: () {},
                        style: TextButton.styleFrom(primary: txtColor),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      TextButton.icon(
                        icon: Icon(
                          Votes.upload,
                          size: 18,
                        ),
                        label: Text("Share"),
                        onPressed: () {},
                        style: TextButton.styleFrom(primary: txtColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              style: TextStyle(color: txtColor),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: txtColor, width: 1.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: tabScreenColor, width: 2.0)),
                  labelText: 'Search',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  suffixIcon: Icon(
                    Icons.search,
                    color: txtColor,
                  ),
                  labelStyle: TextStyle(color: txtColor)),
              onChanged: (value) => _runSearch(value),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: widget.posts.length,
                  itemBuilder: (context, index) {
                    return postComponent(_foundPosts[index], context);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
