import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'donation_page.dart';

class SupportusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Support Us"),
        actions: <Widget>[
          new RaisedButton(
            color: Colors.red,
            child: new Text('Donate',
                style: new TextStyle(fontSize: 17.0, color: Colors.white)),
            onPressed: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new DonationPage()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0),
              child: Text(
                "SUPPORT US",
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15.0,
              width: 200.0,
              child: Divider(
                color: Colors.red,
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              child: Text(
                "HELP US IN BUILDING A BETTER FUTURE",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 0),
              child: Text(
                "SPONSOR A CHILD",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              child: Text(
                "Help the underprivileged by becoming their sponsor parent",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              width: 350,
              height: 350,
              color: Colors.green[800],
              child: Card(
                margin: EdgeInsets.all(10.0),
                child: new InkWell(
                  onTap: () => launch("https://www.deepalaya.org/sponsors"),
                  child: ListTile(
                    title:
                        Image(image: AssetImage('support_images/support1.jpg')),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
              width: 250.0,
              child: Divider(
                color: Colors.red,
                thickness: 1.5,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 0),
              child: Text(
                "DONATE",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              child: Text(
                "Stand with us by donating generously to our cause",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              width: 350,
              height: 350,
              color: Colors.green[800],
              child: Card(
                margin: EdgeInsets.all(10.0),
                child: new InkWell(
                  onTap: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new DonationPage()));
                  },
                  child: ListTile(
                    title:
                        Image(image: AssetImage('support_images/support2.jpg')),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
              width: 250.0,
              child: Divider(
                color: Colors.red,
                thickness: 1.5,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 0),
              child: Text(
                "DONATION IN KIND",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              child: Text(
                "Support the less-privileged people in providing gift in kind",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              width: 350,
              height: 350,
              color: Colors.green[800],
              child: Card(
                margin: EdgeInsets.all(10.0),
                child: new InkWell(
                  onTap: () =>
                      launch("https://www.deepalaya.org/donation-in-kind"),
                  child: ListTile(
                    title:
                        Image(image: AssetImage('support_images/support3.jpg')),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
              width: 250.0,
              child: Divider(
                color: Colors.red,
                thickness: 1.5,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 0),
              child: Text(
                "SPONSORSHIP RENEWAL",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              child: Text(
                "Renew sponsorship for your sponsored child",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              width: 350,
              height: 350,
              color: Colors.green[800],
              child: Card(
                margin: EdgeInsets.all(10.0),
                child: new InkWell(
                  onTap: () => launch("https://www.deepalaya.org/support-us"),
                  child: ListTile(
                    title:
                        Image(image: AssetImage('support_images/support4.jpg')),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
              width: 250.0,
              child: Divider(
                color: Colors.red,
                thickness: 1.5,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 0),
              child: Text(
                "RAISE FUNDS",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              child: Text(
                "Raise funds for issues around your favourite cause",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              width: 350,
              height: 350,
              color: Colors.green[800],
              child: Card(
                margin: EdgeInsets.all(10.0),
                child: new InkWell(
                  onTap: () => launch("https://www.deepalaya.org/support-us"),
                  child: ListTile(
                    title:
                        Image(image: AssetImage('support_images/support5.jpg')),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
              width: 250.0,
              child: Divider(
                color: Colors.red,
                thickness: 1.5,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 0),
              child: Text(
                "FAQS",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              child: Text(
                "Learn about us by frequently asked questions",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              width: 350,
              height: 350,
              color: Colors.green[800],
              child: Card(
                margin: EdgeInsets.all(10.0),
                child: new InkWell(
                  onTap: () => launch("https://www.deepalaya.org/faqs"),
                  child: ListTile(
                    title:
                        Image(image: AssetImage('support_images/support6.jpg')),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
              width: 250.0,
              child: Divider(
                color: Colors.red,
                thickness: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
