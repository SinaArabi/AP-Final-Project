import 'package:flutter/material.dart';
import 'package:reddit_sos/feed.dart';
import 'package:reddit_sos/tabs_screen.dart';
import '../icon.dart';
import '../line.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "login_screen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                image: AssetImage("assets/images/logo.png"),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: InputDecoration(
                hintText: 'Enter your email',
                hintStyle: TextStyle(color: Colors.white),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromRGBO(106, 50, 159, 1), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromRGBO(106, 50, 159, 1), width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: InputDecoration(
                hintText: 'Enter your password.',
                hintStyle: TextStyle(color: Colors.white),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromRGBO(106, 50, 159, 1), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromRGBO(106, 50, 159, 1), width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Color.fromRGBO(106, 50, 159, 1),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, tabsScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Submit',
                  ),
                  textColor: Colors.white,
                ),
              ),
            ),
            const Line(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SignInButton(
                  Buttons.Apple,
                  onPressed: () {},
                  mini: false,
                ),
                SignInButton(
                  Buttons.Facebook,
                  onPressed: () {},
                  mini: false,
                ),
                SignInButton(
                  Buttons.Google,
                  onPressed: () {},
                  mini: false,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
