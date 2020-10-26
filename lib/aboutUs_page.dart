import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("About Us"),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Text(
                "About Us",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(
                "Deepalaya started in 1979 with 7 founding members with the objective of educating the underprivileged girl children. Over the years, our focus has expanded from providing education only to children, to helping underprivileged women, youth and children become self-reliant through education and vocational training. Today, we are Delhi\'s largest operational NGO and have established projects across Delhi, Haryana, Uttar Pradesh and Uttarakhand. The NGO for more than three decades, has been contributing to the crusade against illiteracy. \"Every child deserves a chance\" is what Deepalaya strongly believes in and has been working towards it. Over the years, Deepalaya has established several projects in the areas of Education (Formal/Non-Formal/Remedial), Women Empowerment (reproductive health, SHG, Micro-finance), Institutional care, Community health, Vocational training and Differently Abled. These projects are operational in Delhi, Haryana, Uttarakhand and Uttar Pradesh. Till date, Deepalaya has reached out to more than 3,10,827 children, given vocational training to 12,550 adults and helped form more than 1300 Self Help Groups with 15632 women who have established more than 8394 micro enterprises. Deepalayaas growth, however, has not been a solitary one; the organization takes the initiative to collaborate with the government and with other agencies to make meaningful intervention in the policy making process of the State.",
                textAlign: TextAlign.center,
              )
            ],
          )),
    );
  }
}
