import 'package:flutter/material.dart';
import './subReddit.dart';

class subRedditPage extends StatefulWidget {
  // const subRedditPage({Key key}) : super(key: key);

  @override
  State<subRedditPage> createState() => _subRedditPageState();
}

class _subRedditPageState extends State<subRedditPage> {
  List<subReddit> _subs = [
    subReddit(
        "GOT",
        'https://movieposterhd.com/wp-content/uploads/2019/03/Game-of-Thrones-8-Season-iPhone-6-Wallpaper.jpg',
        1001),
    subReddit(
        "Programmers",
        'https://images.unsplash.com/photo-1605379399642-870262d3d051?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1506',
        20212),
    subReddit(
        "GTA V",
        "https://images.unsplash.com/photo-1621364525332-f9c381f3bfe8?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032",
        5000000),
  ];

  List<subReddit> _foundSubs = [];
  initState() {
    _foundSubs = _subs;
    super.initState();
  }

  void _runSearch(String enteredKeyword) {
    List<subReddit> searchedSubs = [];
    if (enteredKeyword.isEmpty) {
      searchedSubs = _subs;
    } else {
      searchedSubs = _subs
          .where((sub) =>
              sub.subId.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundSubs = searchedSubs;
    });
  }

  subComponent(subId, image, members) {
    return Card(
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
                "r/" + subId,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
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
                    return subComponent(_foundSubs[index].subId,
                        _foundSubs[index].image, _foundSubs[index].members);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
