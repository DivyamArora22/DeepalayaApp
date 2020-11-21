import 'package:flutter/material.dart';
import 'donation_page.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("About Us"),
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
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0),
                  child: Text(
                    "ABOUT US ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
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
                  margin: EdgeInsets.all(10.0),
                  child: Text(
                    """Deepalaya started in 1979 with 7 founding members with the objective of educating the underprivileged girl children. Over the years, our focus has expanded from providing education only to children, to helping underprivileged women, youth and children become self-reliant through education and vocational training.
 
Today, we are Deepalaya as the largest operational NGO and have established projects across Delhi, Haryana, Uttar Pradesh, and Uttarakhand.
 
The NGO for more than three decades has been contributing to the crusade against illiteracy. “Every child deserves a chance is what Deepalaya strongly believes in and has been working towards it.
 
Over the years, Deepalaya has established several projects in the areas of Education (Formal/Non-Formal/Remedial), Women Empowerment (reproductive health, SHG, Micro-finance), Institutional care, Community health, Vocational training, and Differently Abled. These projects are operational in Delhi, Haryana, Uttarakhand, and Uttar Pradesh.
 
Till date, Deepalaya has reached out to more than 3,50,306 children, given vocational training to 15,053 adults, and helped form more than 1,563 Self Help Groups with 17,507 women who have established more than 8,369 micro-enterprises.
 
Deepalaya's growth, however, has not been a solitary one; the organization takes the initiative to collaborate with the government and with other agencies to make a meaningful intervention in the policymaking process of the State.""",
                    textAlign: TextAlign.center,
                  ),
                ),
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
                SizedBox(
                  height: 15.0,
                  width: 200.0,
                  child: Divider(
                    color: Colors.red,
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
                    "OUR MISSION ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
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
                  margin: EdgeInsets.all(10.0),
                  child: Text(
                    """We at Deepalaya commit ourselves –

To identify and work along the economically and socially deprived, the physically and mentally challenged – starting with children, so that they become educated, skilled and aware.
Enable them to be self-reliant and enjoy a healthy, dignified and sustainable quality of life
And to that end, act as a resource to and collaborate with other agencies – governmental or non-governmental, as well as suitably intervene in policy formulation.""",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
