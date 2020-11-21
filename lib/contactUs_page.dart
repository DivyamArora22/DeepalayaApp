import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'donation_page.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            title: Text('Contact Us'),
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
            ]),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/deepalayalogo.png'),
              ),
              SizedBox(
                height: 10.0,
              ),
              new Text('Deepalaya'.toUpperCase(),
                  style: new TextStyle(fontSize: 17.0, color: Colors.black)),
              SizedBox(
                height: 15.0,
                width: 200.0,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              new Text('Enabling Self Reliance'.toUpperCase(),
                  style: new TextStyle(fontSize: 17.0, color: Colors.black)),
              SizedBox(
                height: 10.0,
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: new InkWell(
                  onTap: () => launch("tel://01128520347"),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    title: Text('011-28520347'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: new InkWell(
                  onTap: () => launch(
                      "mailto:support@deepalaya.org?subject=Support&body=New%20plugin"),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text('support@deepalaya.org'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: new InkWell(
                  onTap: () => launch("https://www.deepalaya.org/"),
                  child: ListTile(
                    leading: Icon(
                      Icons.web,
                      color: Colors.white,
                    ),
                    title: Text('www.deepalaya.org'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
