import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:reddit_sos/icons.dart';
import 'package:reddit_sos/subReddit.dart';
import './post.dart';
import './tabs_screen.dart';
import './global.dart';

class addPost extends StatefulWidget {
  static const String id = "addPost_screen";
  final List<subReddit> subRedditsList;
  addPost(this.subRedditsList);

  @override
  State<addPost> createState() => _addPostState();
}

class _addPostState extends State<addPost> {
  late String primaryValue;
  @override
  void initState() {
    primaryValue = widget.subRedditsList[0].subName;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: IconButton(
            onPressed: () {Navigator.pushNamed(context, tabsScreen.id );},
            icon: Icon(
              Votes.cancel_1,
              color: txtColor,
            )),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: bgColor),
            onPressed:  () {Navigator.pushNamed(context, tabsScreen.id );},
            child: Text(
              "Done",
              style: TextStyle(color: txtColor),
            ),
          )
        ],
      ),
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              
              alignment: Alignment.centerLeft,
              child: DropdownButton<String>(
                underline: SizedBox(),
                hint: Text("Select subreddit"),
                value: primaryValue,
                dropdownColor: Colors.grey,
                items: widget.subRedditsList
                    .map(
                      (sub) => DropdownMenuItem<String>(
                          value: sub.subName, child: Text(sub.subName, style: TextStyle(color: txtColor),)),
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
                    style: TextStyle(color: txtColor),
                    decoration: (InputDecoration(
                      hintText: 'Add a title',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      hintStyle: TextStyle(color: txtColor),
                    )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    style: TextStyle(color: txtColor),
                    decoration: (InputDecoration(
                      hintText: 'Add a body text',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      hintStyle: TextStyle(color: txtColor),
                    )),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
