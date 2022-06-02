import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:reddit_sos/icons.dart';
import 'package:reddit_sos/subReddit.dart';
import './post.dart';

class subRedditView extends StatelessWidget {
  // const subRedditView({Key? key}) : super(key: key);
  final subReddit chosenSubReddit;
  subRedditView(this.chosenSubReddit);

  subRedditCard() {
    return ListTile(
      
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25,),
            Text("r/" + chosenSubReddit.subId, style: TextStyle(color: Colors.white, fontSize: 18)),
          ],
        ),
        trailing: Wrap(
          children: [
            IconButton(
              icon: Icon(Icons.notifications_none_rounded),
              onPressed: () {},
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text("Joined"),
              
            ),
          ],
        ),
        
        subtitle: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(chosenSubReddit.members.toString() + " members", style: TextStyle(color: Colors.grey, fontSize: 12),),
            Text(chosenSubReddit.aboutSub, style: TextStyle(color: Colors.white, fontSize: 14),)
          ],
        ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: Icon(Icons.arrow_back_rounded),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabled: false,
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.purple, width: 2.0)),
                        labelText: "r/" + chosenSubReddit.subId,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                Icon(Votes.upload_1),
                Icon(Icons.more_horiz),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                width: 60,
                height: 60,
                child: ClipOval(
                  child: Image.asset(
                    chosenSubReddit.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              subRedditCard(),
            ],
          )
        ]),
      ),
    );
  }
}
