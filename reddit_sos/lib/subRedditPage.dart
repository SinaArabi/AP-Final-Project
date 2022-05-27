import 'package:flutter/material.dart';
import './subReddit.dart';

class subRedditPage extends StatefulWidget {
  // const subRedditPage({Key key}) : super(key: key);

  @override
  State<subRedditPage> createState() => _subRedditPageState();
}

class _subRedditPageState extends State<subRedditPage> {
  List<subReddit> _subs = [
    // subReddit("GOT", 'https://unsplash.com/photos/HqpQMFPbFDc', 1001),

    subReddit("GOT", 'https://picsum.photos/250?image=9', 1001),
    subReddit("Programmers", 'https://unsplash.com/photos/6sAl6aQ4OWI', 20212),
    subReddit("GTA V", "https://unsplash.com/photos/x7EkH3S6EjU", 5000000),
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
              sub.id.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundSubs = searchedSubs;
    });
  }

  subComponent(id, image, members) {
    return Card(
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
        Column(
          children: [
            Text(
              "r/" + id,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),
            ),
          ],
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SubReddits')),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
              onChanged: (value) => _runSearch(value),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _foundSubs.length,
                  itemBuilder: (context, index) {
                    return subComponent(_foundSubs[index].id,
                        _foundSubs[index].image, _foundSubs[index].members);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
