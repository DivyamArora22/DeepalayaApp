import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_demo/home_page.dart';
import 'package:login_demo/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:login_demo/data.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    //final UserInfo = Provider.of<DocumentSnapshot>(context);
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Profile"),
      ),
      body: new Center(
          //child: new Text(UserInfo['name']),
          ),
    );
  }
}
