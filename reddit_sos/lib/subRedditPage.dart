import 'dart:js';

import 'package:flutter/material.dart';
import 'package:reddit_sos/subRedditView.dart';
import './subReddit.dart';

class subRedditPage extends StatefulWidget {
  static const String id = "subRedditPage_screen";
  final List <subReddit> _subs ;
  subRedditPage(this._subs);

  @override
  State<subRedditPage> createState() => _subRedditPageState();
}

class _subRedditPageState extends State<subRedditPage> {

  List<subReddit> _foundSubs = [];
  initState() {
    _foundSubs = widget._subs;
    super.initState();
  }

  void _runSearch(String enteredKeyword) {
    List<subReddit> searchedSubs = [];
    if (enteredKeyword.isEmpty) {
      searchedSubs = widget._subs;
    } else {
      searchedSubs = widget._subs
          .where((sub) =>
              sub.subName.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundSubs = searchedSubs;
    });
  }

  subComponent(subName, image, members, index) {
    return InkWell(
      // onTap:Navigator.push(context, MaterialPageRoute(builder: (context) => subRedditView(_foundSubs[index]))),
      child: Card(
          color: Theme.of(context).selectedRowColor,
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                child: ClipOval(
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Text(
                  "r/" + subName,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
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
              onChanged: (value) => _runSearch(value),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _foundSubs.length,
                  itemBuilder: (context, index) {
                    return subComponent(_foundSubs[index].subName,
                        _foundSubs[index].image, _foundSubs[index].members, index);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
