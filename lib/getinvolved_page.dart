import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'donation_page.dart';

class GetinvolvedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Get Involved"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0),
              child: Text(
                "GET INVOLVED",
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
                "WAYS OF MAKING THE DIFFERENCE",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 0),
              child: Text(
                "BE A MONTHLY DONOR",
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
                "Standing with us by donating on a monthly basis.",
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
                  onTap: () => launch("https://www.deepalaya.org/donatenow"),
                  child: ListTile(
                    title: Image(
                        image:
                            AssetImage('getinvolved_images/getinvolved1.png')),
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
                "BUY GIFT FROM US",
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
                "Buying gift from us can bring positive change in the lives of many",
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
                  onTap: () => launch("https://www.deepalaya.org/get-involved"),
                  child: ListTile(
                    title: Image(
                        image:
                            AssetImage('getinvolved_images/getinvolved2.png')),
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
                "PLEDGE YOUR BIRTHDAY",
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
                "Celebrate your birthday with our childern and project",
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
                      launch("https://www.deepalaya.org/celebrate-with-us"),
                  child: ListTile(
                    title: Image(
                        image:
                            AssetImage('getinvolved_images/getinvolved3.png')),
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
                "CSR WITH US",
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
                "You can do any CSR Project with us and bring impact in the community",
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
                  onTap: () => launch("https://www.deepalaya.org/csr"),
                  child: ListTile(
                    title: Image(
                        image:
                            AssetImage('getinvolved_images/getinvolved4.png')),
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
                "VOLUNTEER WITH US",
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
                "Contribute and support in building a better and secure society",
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
                  onTap: () => launch("https://www.deepalaya.org/volunteer"),
                  child: ListTile(
                    title: Image(
                        image:
                            AssetImage('getinvolved_images/getinvolved5.png')),
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
                "SUPPORT US ON SOCIAL MEDIA",
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
                "Be a social media influencer and bring long lasting impact",
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
                  onTap: () => launch(
                      "https://www.deepalaya.org/deepalaya-social-media"),
                  child: ListTile(
                    title: Image(
                        image:
                            AssetImage('getinvolved_images/getinvolved6.png')),
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
                "INTERNSHIP WITH US",
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
                "Contribute and help us in building a better society",
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
                  onTap: () => launch("https://www.deepalaya.org/internship"),
                  child: ListTile(
                    title: Image(
                        image:
                            AssetImage('getinvolved_images/getinvolved7.png')),
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
                "CAREER",
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
                "Be a part of change makers team that drive long lasting equitable change",
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
                  onTap: () => launch("https://www.deepalaya.org/job"),
                  child: ListTile(
                    title: Image(
                        image:
                            AssetImage('getinvolved_images/getinvolved8.png')),
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
                "CAMPAIGNS",
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
                "Raise awareness about specific issues around your favourite cause",
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
                  onTap: () => launch("https://www.deepalaya.org/get-involved"),
                  child: ListTile(
                    title: Image(
                        image:
                            AssetImage('getinvolved_images/getinvolved9.png')),
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
