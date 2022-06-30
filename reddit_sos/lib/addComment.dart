import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reddit_sos/global.dart';
import 'package:reddit_sos/icons.dart';
import 'package:reddit_sos/postView.dart';
import './post.dart';
import 'global.dart';

class addComment extends StatelessWidget {


  final post commentedPost;
  addComment(this.commentedPost);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => postView(commentedPost),
                  ),
                );
              },
                icon: Icon(
                  Votes.cancel_1,
                  color: txtColor,
                )),
                Text("Add comment", style: TextStyle(color: txtColor, fontSize: 18),),
          ],
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor),
            onPressed: () {},
            child: Text(
              "Post",
              style: TextStyle(color: txtColor),
            ),
          )
        ],
      ),
      backgroundColor: bgColor,
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                TextField(
                  decoration: (InputDecoration(
                    enabled: false,
                    hintText: commentedPost.postTitle,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  )),
                ),
                SizedBox(height: 20,),
                TextField(
                  style: TextStyle(color: txtColor),
                  decoration: (InputDecoration(
                    hintText: 'Add your comment',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    hintStyle: TextStyle(color:txtColor, fontSize: 14),
                  )),
                ),
              ]),
            ),
          ),
        ],
      ),
    
    );
  }
}  