import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:reddit_sos/icons.dart';
import './post.dart';

class addPost extends StatefulWidget {
  const addPost({Key? key}) : super(key: key);

  @override
  State<addPost> createState() => _addPostState();
}

class _addPostState extends State<addPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Votes.cancel_1,
              color: Colors.white,
            )),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor),
            onPressed: () {},
            child: Text(
              "Done",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Container(
            child: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text("salam"),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                TextField(
                  decoration: (InputDecoration(
                    hintText: 'Add a title',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    hintStyle: TextStyle(color: Colors.white),
                  )),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: (InputDecoration(
                    hintText: 'Add a body text',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    hintStyle: TextStyle(color: Colors.white),
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
