import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id="welcome_screen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.black,

        body:

        Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        child: Image.asset('assets/images/logo.png'),
                        height: 100.0,
                      ),
                      Text(
                        ' Reddit',
                        style: TextStyle(
                            fontSize: 45.0,
                            fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(106, 50, 159, 1)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 48.0,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Column(
                        children: [
                          ButtonTheme(
                              minWidth: 400.0,
                              height: 42.0,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, RegistrationScreen.id);
                                },
                                child: Text('Sign In'),
                                color: Color.fromRGBO(106, 50, 159, 1),
                                textColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Color.fromRGBO(106, 50, 159, 1),
                                      width: 2),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                              )),
                          SizedBox(height: 20),
                          ButtonTheme(
                              minWidth: 400.0,
                              height: 42.0,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, LoginScreen.id);
                                },
                                child: Text('Sign Up'),
                                color: Color.fromRGBO(106, 50, 159, 1),
                                textColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Color.fromRGBO(106, 50, 159, 1),
                                      width: 2),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                              ))
                        ],


                      ))
                ])));
  }
}
