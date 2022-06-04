import 'package:flutter/material.dart';
import 'package:reddit_sos/tabs_screen.dart';

class About extends StatefulWidget {
  static const String id = "About_Screen";

  @override
  _AboutScreen createState() => _AboutScreen();
}

class _AboutScreen extends State<About> {
  final double ProfileHeight=144;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:ListView(
        padding: EdgeInsets.zero,
        children:<Widget> [
          buildTop(),
          buildContent(),
        ],
      )

    );
  }

Widget buildProfileImage()=> CircleAvatar(
  radius: ProfileHeight / 2,
  backgroundColor: Colors.white,
  backgroundImage: AssetImage('assets/images/Sina (1).jpg'),
);
  Widget buildTop(){
    return Stack(

        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 150.0, child: buildProfileImage(),
          )]
    );
  }
  Widget buildContent()=>Column(
    children: [
      const SizedBox(height: 8.0),
      Text(" Sina Arabi",
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      ),
    ],
  );





}
