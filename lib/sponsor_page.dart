import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SponsorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sponsor Us"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Text("Our Mission ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                textAlign: TextAlign.center),
          ),
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
                        image: AssetImage('assets/3.jpg'), fit: BoxFit.cover)),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage('assets/2.jpg'), fit: BoxFit.cover)),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: AssetImage('assets/4.jpg'), fit: BoxFit.cover)),
              ),
            ],
          ),
          Text(
            "SPONSOR A CHILD WITH DEEPALAYA",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15.0,
            width: 200.0,
            child: Divider(
              color: Colors.red,
            ),
          ),
          Text(
            "As Deepalaya\’s education activities gathered pace, we were in a dilemma. The need was huge but the hands were limited. This led to the invention of the sponsorship programme based on the concept of \“Each One, Teach One\". \“Sponsor-A-Child\” establishes a one-to-one relationship between the sponsored child and sponsor parent. By sponsoring a child with Deepalaya – one of the Best NGOs in India, you can bring a significant change by educating a child in society.",
            textAlign: TextAlign.center,
          ),
          Text(
            "WHY SPONSOR A CHILD?",
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15.0,
            width: 200.0,
            child: Divider(
              color: Colors.red,
            ),
          ),
          Text(
            "Sponsoring a child is the most effective way to fight the social evils of poverty and illiteracy. It creates a timeless impact. You develop a long-term personal relationship with your sponsored child by supporting him/her entirely during his education years till he leaves high school, graduates, or becomes self-reliant. In the process, you become a positive role model for him/her. Not only that, the education that the child receives will help him/her break free from poverty and over time become a self-reliant, dignified individual, and socially responsible citizen.",
            textAlign: TextAlign.center,
          ),
          Text(
            "WHAT YOU GET AS A SPONSOR?",
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15.0,
            width: 200.0,
            child: Divider(
              color: Colors.red,
            ),
          ),
          Text(
            "The immense happiness and satisfaction to take a child out of illiteracy and darkness.",
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            "As a bonus, you shall receive the following: ",
            textAlign: TextAlign.center,
          ),
          Text(
            "1. Communications about the child twice a year – A Term Letter cum New Year greeting card along with activity photograph of the child. (At the end of the calendar year) and the Annual Progress Report to show you his/ her progress at the end of the academic year.",
            textAlign: TextAlign.center,
          ),
          Text(
            "2. Deepalaya’s Annual Reports and quarterly Newsletters (via email). Also, you can keep in touch constantly with your child through letters and personal visits that will be coordinated by our Sponsorship Department.",
            textAlign: TextAlign.center,
          ),
          Text(
            "HOW TO SPONSOR A CHILD?",
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15.0,
            width: 200.0,
            child: Divider(
              color: Colors.red,
            ),
          ),
          Image(image: AssetImage('images/1.jpg')),
          Text(
            "TO SPONSOR A CHILD, PRESS ON THE BUTTON BELOW",
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Card(
            margin: EdgeInsets.all(10.0),
            child: new InkWell(
              onTap: () => launch("https://www.deepalaya.org/"),
              child: ListTile(
                title: Text(
                  'SPONSOR US',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*ListView(
        children: <Widget>[
          Text("Our Mission ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              textAlign: TextAlign.center),
          SizedBox(height: 15.0),
          Image(image: null),
          Container(
              child: Text(
                'We at Deepalaya commit ourselves – To identify and work along the economically and socially deprived, the physically and mentally challenged – starting with children, so that they become educated, skilled and aware. Enable them to be self-reliant and enjoy a healthy, dignified and sustainable quality of life And to that end, act as a resource to and collaborate with other agencies – governmental or non-governmental, as well as suitably intervene in policy formulation.',
                textAlign: TextAlign.center,
              ),
              margin: EdgeInsets.all(40))

        ],
      ),'''
      
*/
