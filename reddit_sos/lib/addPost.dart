import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:reddit_sos/icons.dart';
import 'package:reddit_sos/subReddit.dart';
import './post.dart';

class addPost extends StatefulWidget {
  // const addPost({Key? key}) : super(key: key);
  final List<subReddit> subRedditsList;
  addPost(this.subRedditsList);

  @override
  State<addPost> createState() => _addPostState();
}

class _addPostState extends State<addPost> {
  late String primaryValue;
  @override
  void initState() {
    // TODO: implement initState
    primaryValue = widget.subRedditsList[0].subId;
    super.initState();
  }

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
            child: DropdownButton<String>(
              value: primaryValue,
              items: widget.subRedditsList
                  .map(
                    (sub) => DropdownMenuItem<String>(
                        value: sub.subId, child: Text(sub.subId)),
                  )
                  .toList(),
              onChanged: (newValue) =>
                setState(() {
                  primaryValue = newValue!;
                }),
              
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: (InputDecoration(
                    hintText: 'Add a title',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    hintStyle: TextStyle(color: Colors.white),
                  )),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
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
