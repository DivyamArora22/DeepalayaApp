import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'donation_page.dart';

class NewsroomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Newsroom"),
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
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
                margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Column(
                  children: <Widget>[
                    Text("Deepalaya Gallery",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26),
                        textAlign: TextAlign.center)
                  ],
                )),
          ),
          SliverStaggeredGrid.countBuilder(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
              itemBuilder: (context, index) {
                return ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset("assets/$index.jpg"));
              },
              itemCount: 8)
        ],
      ),
    );
  }
}
