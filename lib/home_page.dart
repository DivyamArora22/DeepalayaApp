import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:login_demo/database.dart';
import 'package:login_demo/sponsor_page.dart';
import 'package:provider/provider.dart';
import 'package:login_demo/data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_demo/auth.dart';
import 'auth.dart';
import 'package:login_demo/aboutUs_page.dart';
import 'package:login_demo/projects_page.dart';
import 'package:login_demo/contactUs_page.dart';
import 'package:login_demo/newsroom_page.dart';
import 'package:login_demo/update_profile.dart';
import 'package:login_demo/show_profile.dart';
import 'donation_page.dart';
import 'getinvolved_page.dart';
import 'supportus_page.dart';

class HomePage extends StatelessWidget {
  HomePage({this.auth, this.onSignedOut});
  final BaseAuth auth;
  final VoidCallback onSignedOut;

  void _signOut() async {
    try {
      await auth.signOut();
      onSignedOut();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    return StreamProvider<DocumentSnapshot>.value(
      value: DatabaseService(uid: user.uid).display,
      child: Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome!'),
          actions: <Widget>[
            new RaisedButton(
              color: Colors.red,
              child: new Text('Donate',
                  style: new TextStyle(fontSize: 17.0, color: Colors.white)),
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new DonationPage()));
              },
            )
          ],
          elevation:
              defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              Show_profile(),
              // new UserAccountsDrawerHeader(
              //   accountName: new Text("Divyam"),
              //   accountEmail: new Text("divyam@123.com"),
              //   currentAccountPicture: new CircleAvatar(
              //       backgroundColor:
              //           Theme.of(context).platform == TargetPlatform.iOS
              //               ? Colors.deepPurple
              //               : Colors.white,
              //       child: new Text("D")),
              // ),
              new RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new Update_profile(auth: new Auth())));
                },
                child: Text('UPDATE PROFILE'),
                color: Colors.pink,
              ),
              new ListTile(
                title: new Text("Donate"),
                leading: new Icon(Icons.monetization_on),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new DonationPage()));
                },
              ),
              new ListTile(
                title: new Text("Our Projects"),
                leading: new Icon(Icons.person),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new ProjectsPage()));
                },
              ),
              new ListTile(
                title: new Text("Get Involved"),
                leading: new Icon(Icons.person),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new GetinvolvedPage()));
                },
              ),
              new ListTile(
                title: new Text("Sponsor a Child"),
                leading: new Icon(Icons.visibility),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new SponsorPage()));
                },
              ),
              new ListTile(
                title: new Text("Support Us"),
                leading: new Icon(Icons.visibility),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new SupportusPage()));
                },
              ),
              new ListTile(
                title: new Text("About us"),
                leading: new Icon(Icons.visibility),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutUsPage()));
                },
              ),
              new ListTile(
                title: new Text("Newsroom"),
                leading: new Icon(Icons.photo),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new NewsroomPage()));
                },
              ),
              new ListTile(
                title: new Text("Contact us"),
                leading: new Icon(Icons.help),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new ContactUsPage()));
                },
              ),
              new Divider(),
              new ListTile(
                title: new Text("Close"),
                leading: new Icon(Icons.close),
                onTap: () => Navigator.of(context).pop(),
              ),
              new ListTile(
                  title: new Text("Sign Out"),
                  leading: new Icon(Icons.backspace),
                  onTap: _signOut),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Text("Our Mission ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                textAlign: TextAlign.center),
            SizedBox(height: 15.0),
            CarouselSlider(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
              items: [
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage('assets/3.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage('assets/2.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage('assets/4.jpg'),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
            Container(
                child: Text(
                  'We at Deepalaya commit ourselves – To identify and work along the economically and socially deprived, the physically and mentally challenged – starting with children, so that they become educated, skilled and aware. Enable them to be self-reliant and enjoy a healthy, dignified and sustainable quality of life And to that end, act as a resource to and collaborate with other agencies – governmental or non-governmental, as well as suitably intervene in policy formulation.',
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.all(40))
          ],
        ),
      ),
    );
  }
}
