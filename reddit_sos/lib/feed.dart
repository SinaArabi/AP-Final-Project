import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:reddit_sos/icons.dart';

import './post.dart';
import './commentDisplay.dart';

class feed extends StatelessWidget {
  // const feed({Key? key}) : super(key: key);
  final List<post> posts;
  feed(this.posts);

  postComponent(post thePost) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListTile(
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
                "r/" + thePost.postSource.subId,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Row(
                children: [
                  Text(
                    "u/" + thePost.poster.UserName,
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  ),
                  Text(
                    " . " + DateFormat.yMMMEd().format(thePost.postDate),
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.more_horiz),
                color: Colors.white,
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
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  thePost.postContent,
                  style: TextStyle(color: Colors.white),
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
                        style: TextButton.styleFrom(primary: Colors.white),
                      ),
                      IconButton(
                        icon: Icon(
                          Votes.down_bold,
                          color: Colors.white,
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
                        style: TextButton.styleFrom(primary: Colors.white),
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
                        style: TextButton.styleFrom(primary: Colors.white),
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
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.white, width: 1.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.purple, width: 2.0)),
                  labelText: 'Search',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  labelStyle: TextStyle(color: Colors.white)),
              onChanged: (value) => {},
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return postComponent(posts[index]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
