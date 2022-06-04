import 'package:flutter/material.dart';
import 'package:reddit_sos/screens/EditProfile.dart';

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
            color: Colors.black,

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
                            'Salar Jahanshiri',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromRGBO(106, 50, 159, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: ListView(children: [
                          ListTile(

                            leading: Icon(Icons.home,color:Color.fromRGBO(106, 50, 159, 1) ,),
                            title: Text(
                              'Home',
                              style: TextStyle(
                                  color: Color.fromRGBO(106, 50, 159, 1)
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, EditProfile.id);
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.person,color:Color.fromRGBO(106, 50, 159, 1) ,),
                            title: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  color: Color.fromRGBO(106, 50, 159, 1)
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.people,color:Color.fromRGBO(106, 50, 159, 1) ,),
                            title: Text(
                              'Community',
                              style: TextStyle(
                                  color: Color.fromRGBO(106, 50, 159, 1)
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.save,color:Color.fromRGBO(106, 50, 159, 1) ,),
                            title: Text(
                              'Saved Post',
                              style: TextStyle(
                                color: Color.fromRGBO(106, 50, 159, 1),
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.info,color:Color.fromRGBO(106, 50, 159, 1) ,),
                            title: Text(
                              'About',
                              style: TextStyle(
                                  color: Color.fromRGBO(106, 50, 159, 1)
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context);
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