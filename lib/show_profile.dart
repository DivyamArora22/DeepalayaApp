import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_demo/home_page.dart';
import 'package:login_demo/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:login_demo/data.dart';

class Show_profile extends StatefulWidget {
  @override
  _Show_profileState createState() => _Show_profileState();
}

class _Show_profileState extends State<Show_profile> {
  @override
  Widget build(BuildContext context) {
    final UserInfo = Provider.of<DocumentSnapshot>(context);
    print(UserInfo['name']);
    return new UserAccountsDrawerHeader(
      accountName: new Text(UserInfo['name']),
      accountEmail: new Text(UserInfo['status']),
      currentAccountPicture: new CircleAvatar(
          backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
              ? Colors.deepPurple
              : Colors.white,
          child: new Text("D")),
    );
  }
}
