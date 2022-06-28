import 'dart:io';

import 'package:flutter/material.dart';
import 'package:reddit_sos/tabs_screen.dart';
import 'package:reddit_sos/user.dart';

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
    if (RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(pass)) {
      return null;
    }
  }
  return "Not a valid password";
}

class RegistrationScreen extends StatefulWidget {
  static const String id = "registration_screen";

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController emailController = TextEditingController();
  String? emailErrorText;
  TextEditingController passwordController = TextEditingController();
  String? passwordErrorText;
  TextEditingController userNameController = TextEditingController();
  bool goNextPage = false;
  String _log = '';

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
            SizedBox(
              height: 200.0,
              child: Image(
                image: AssetImage("assets/images/logo.png"),
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            TextField(
              controller: userNameController,
              style: TextStyle(color: Colors.white),
              onChanged: (text) {},
              decoration: InputDecoration(
                hintText: 'Enter your Username',
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
              height: 18.0,
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
              height: 18.0,
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
                    sendInfoToServer(userNameController.text,
                        emailController.text, passwordController.text);
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
          ],
        ),
      ),
    );
  }

  sendInfoToServer(String userName, String email, String passWord) async {
    String request = "signUp\n$userName/$email/$passWord\u0000";
    await Socket.connect("10.0.2.2", 1111).then((ServerSocket) {
      ServerSocket.write(request);
      ServerSocket.flush();
      ServerSocket.listen((response) {
        print(checkResponse(String.fromCharCodes(response)));
        setState(() {
          _log += (String.fromCharCodes(response));
        });
      });
    });
  }

  String checkResponse(String data) {
    switch (data) {
      case "0":
        goNextPage = false;
        return "please fill in all of the fields";
      case "1":
        Navigator.pushNamed(context, tabsScreen.id);
    }
    return "";
  }
}
