import 'package:flutter/material.dart';
import 'package:login_demo/data.dart';
import 'package:login_demo/database.dart';
import 'package:login_demo/home_page.dart';
import 'auth.dart';
import 'package:provider/provider.dart';

class Update_profile extends StatefulWidget {
  @override
  Update_profile({this.auth});
  final BaseAuth auth;
  State<StatefulWidget> createState() => new _Update_profileState();
}

class _Update_profileState extends State<Update_profile> {
  var _name;
  var _status;

  String value;
  final nameCon = new TextEditingController();
  final statusCon = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    return StreamBuilder<UserData>(
        stream: DatabaseService(uid: user.uid).userData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            UserData userData = snapshot.data;
            return new Scaffold(
              appBar: new AppBar(
                title: new Text("Update Profile"),
              ),
              body: new Center(
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextField(
                          controller: nameCon,
                          decoration: InputDecoration(hintText: 'Enter Name'),
                          onChanged: (text) {
                            value = text;
                          },
                        ),
                        TextField(
                          controller: statusCon,
                          decoration:
                              InputDecoration(hintText: 'Donor/Student'),
                        ),
                        RaisedButton(
                          onPressed: () async {
                            setState(() {
                              _name = nameCon.text;
                              _status = statusCon.text;
                            });

                            await DatabaseService(uid: user.uid).updateUserData(
                                _name ?? userData.name,
                                _status ?? userData.status);
                          },
                          child: Text('save'),
                        ),
                        // Text('your name is $_name and your status is $_status')
                      ],
                    )),
              ),
            );
          } else {
            return HomePage();
          }
        });
  }
}
