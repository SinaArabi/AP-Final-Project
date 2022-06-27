import 'package:flutter/material.dart';
import 'package:reddit_sos/feed.dart';
import 'package:reddit_sos/tabs_screen.dart';
import '../icon.dart';
import '../line.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
isValidEmail(String email) {
  if (email.isNotEmpty) {
    if (RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email)) {
      return null;
    }
  }
  return "Not a valid email";
}

isValidPassword(String pass) {
  if (pass.length >= 8) {

    if (RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(pass)) {
      return null;
    }
  }
  return "Not a valid password";
}

class LoginScreen extends StatefulWidget {
  static const String id = "login_screen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  String? emailErrorText;
  TextEditingController passwordController = TextEditingController();
  String? passwordErrorText;
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
              height: 28.0,
            ),
            TextField(
              style: TextStyle(color: Colors.white),
              onChanged: (text) {},
              decoration: InputDecoration(
                hintText: 'Enter your Username.',
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
              height: 10.0,
            ),
            TextFormField(
              controller: emailController,
              style: const TextStyle(color: Colors.white),
              onChanged: (value) {
                setState(() {
                  emailErrorText = isValidEmail(value);
                });
              },
              decoration: InputDecoration(
                filled: true,
                hintText: 'Enter your email',
                errorText: isValidEmail(emailController.text),
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
              height: 10.0,
            ),
            TextFormField(
              controller: passwordController,
              style: const TextStyle(color: Colors.white),
              onChanged: (value) {
                setState(() {
                  passwordErrorText = isValidPassword(value);
                });
              },
              decoration: InputDecoration(
                filled: true,
                hintText: 'Enter your password',
                errorText: isValidPassword(passwordController.text),
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
              height: 10.0,
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
