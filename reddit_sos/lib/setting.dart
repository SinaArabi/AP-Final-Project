import 'package:flutter/material.dart';
import 'package:reddit_sos/about.dart';
import 'package:reddit_sos/feed.dart';
import 'package:reddit_sos/global.dart';
import 'package:reddit_sos/screens/EditProfile.dart';
import 'package:reddit_sos/subRedditPage.dart';
import 'package:reddit_sos/tabs_screen.dart';
import 'line.dart';

class Setting extends StatefulWidget {
  static const String id = "Setting_screen";

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: bgColor,

          ),
          SafeArea(
              child: Container(
                width: 200.0,
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    DrawerHeader(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50.0,
                            backgroundImage:
                            Image.asset('assets/images/profile.jpg').image,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            // 'John Doe',
                            mainUserName,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: txtColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: tabScreenColor,
                      width: double.infinity,
                      height: 1.0,
                    ),
                    Expanded(
                        child: ListView(children: [
                          ListTile(

                            leading: Icon(Icons.home,color:txtColor ,),
                            title: Text(
                              'Home',
                              style: TextStyle(
                                  color: txtColor
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, tabsScreen.id);
                            },
                          ),
                          Container(
                            color: tabScreenColor,
                            width: double.infinity,
                            height: 1.0,
                          ),
                          ListTile(
                            leading: Icon(Icons.person,color:txtColor ,),
                            title: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  color: txtColor
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, EditProfile.id);
                            },
                          ),
                          Container(
                            color: tabScreenColor,
                            width: double.infinity,
                            height: 1.0,
                          ),
                          ListTile(
                            leading: Icon(Icons.people,color:txtColor ,),
                            title: Text(
                              'Community',
                              style: TextStyle(
                                  color: txtColor
                              ),
                            ),
                            onTap: () {
                              // Navigator.pop(context);
                              Navigator.pushNamed(context, subRedditPage.id);
                            },
                          ),
                          Container(
                            color: Color.fromRGBO(106, 50, 159, 1),
                            width: double.infinity,
                            height: 1.0,
                          ),
                          ListTile(
                            leading: Icon(Icons.save,color:txtColor ,),
                            title: Text(
                              'Saved Post',
                              style: TextStyle(
                                color: txtColor,
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context,feed.id);
                            },
                          ),
                          Container(
                            color: tabScreenColor,
                            width: double.infinity,
                            height: 1.0,
                          ),
                          ListTile(
                            leading: Icon(Icons.info,color:txtColor,),
                            title: Text(
                              'About',
                              style: TextStyle(
                                  color: txtColor
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context,About.id);
                            },
                          ),


                        ])),
                  ],
                ),
              ))
        ],
      ),

    );

  }

}
