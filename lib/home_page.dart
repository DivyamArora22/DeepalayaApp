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
                color: Colors.red,
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
                title: new Text("Sponsor A Child"),
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
                title: new Text("About Us"),
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
            Text("DEEPALAYA",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.green),
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
                          image: AssetImage('images/30.jpg'),
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
                margin: EdgeInsets.all(40)),
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0),
              child: Text(
                "OUR VISION ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                """A society based on legitimate rights, equity, justice, honesty, social sensitivity and a culture of service in which all are self-reliant.

Deepalaya’s focus and sole reason for existence is the child, especially the girl child, street child and disabled child. The family of the child is the medium through which the development takes place. Organisation and sensitisation of the community is the approach through which empowerment, capacity building and social transformation are attempted.""",
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0),
              child: Text(
                "OUR IMPACT ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10.0),
            Image(image: AssetImage("images/h1.jpg")),
            SizedBox(height: 30.0),
            Image(image: AssetImage("images/h2.jpg")),
            SizedBox(height: 30.0),
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0),
              child: Text(
                "TESTIMONIALS ",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10.0),
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
                          image: AssetImage('images/h3.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage('images/h4.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage('images/h5.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage('images/h6.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage('images/h7.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage('images/h8.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage('images/h9.jpg'),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
