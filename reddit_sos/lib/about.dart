import 'package:flutter/material.dart';
import 'package:reddit_sos/tabs_screen.dart';

class About extends StatefulWidget {
  static const String id = "About_screen";
  @override
  _AboutScreen createState() => _AboutScreen();
}

class _AboutScreen extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(

              height: 200.0,
              child: Image(
                image: AssetImage("assets/images/Sina (1).jpg"),
              ),

        ),
            SizedBox(
          height: 28.0,
        ),
            Text("Mohammad Sina Arabi",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    color: Color.fromRGBO(106, 50, 159, 1),
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Text("Flutter Developer",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(106, 50, 159, 1),
                    )),
            SizedBox(height: 28.0),
            Container(

              height: 200.0,
              child: Image(
                image: AssetImage("assets/images/Sina (2).jpg"),

              ),



            ),
            SizedBox(
              height: 28.0,
            ),
            Text("Salar Jahanshiri",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    color: Color.fromRGBO(106, 50, 159, 1),
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Text("Flutter Developer",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromRGBO(106, 50, 159, 1),
                )),

      ]),
    ));
  }
}
