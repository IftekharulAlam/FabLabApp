// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:carousel_slider/carousel_slider.dart';

import 'package:app/Drawer/mydrawer.dart';
import 'package:app/data/playes.dart';
import 'package:app/screens/datailsPage.dart';
import 'package:app/screens/my_player_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> myData = MyData().data;
  final List<Map<String, String>> myData2 = MyData().data2;

  Image img1 = Image.asset("assets/images/About_us_page_Banner.jpeg");
  Image img2 = Image.asset("assets/images/carosel1.png");

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarFabLab(),
      drawer: MyDrawer(),
      body: ListView(
        // physics: ScrollPhysics(),
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: img1.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: img2.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 220.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Text(
                  "Overview",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Text(
                    "FAB Lab IUB is a sub project of HEQEP, a project under the University grants Commission of Bangladesh. Our goal is to provide fabrication equipment to individuals or Organizations in order to facilitate learning of practical, industry relevant skills. We also hope to bridge the gap between local innovators and makers and create a rich and diverse maker community who can deliver impactful solution to local problems."),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 8.0, left: 15.0, right: 15.0),
                child: Text(
                    "A Fab Lab is supposed to be a platform for learning, a place to discover, invent and mentor. To be a Fab Lab is to be a part of an ever expanding network of makers, artists, designers, researchers and entrepreneurs. We hope to be exactly that and also provide all fabrication facilities to make almost anything, starting from rapid prototypes to industrial solutions."),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.facebook),
                color: Colors.blueAccent,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.social_distance),
                color: Colors.blueAccent,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.call),
                color: Colors.blueAccent,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.message),
                color: Colors.blueAccent,
                onPressed: () {},
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Our Facilities",
                style: TextStyle(fontSize: 20),
              ),
              GridViewContainer(),
              Text(
                "What we offer",
                style: TextStyle(fontSize: 20),
              ),
              GridViewContainer()
            ],
          ),
        ],
      ),
    );
  }

  static AppBar appBarFabLab() {
    return AppBar(
      title: Center(
        child: Row(
          children: [
            SizedBox(
              width: 10.0,
            ),
            SizedBox(
                width: 50,
                height: 50,
                child: Image.asset("assets/images/fablabLogomini.jpeg")),
            SizedBox(
              width: 10.0,
            ),
            Text("FabLab IUB"),
          ],
        ),
      ),
    );
  }

  GridViewContainer() {
    return SizedBox(
      width: double.infinity,
      height: 1380,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          physics: ScrollPhysics(),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemCount: 4,
          itemBuilder: (BuildContext context, int i) => InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    title: myData[i]["title"]!,
                    pic: myData[i]["photo"]!,
                  ),
                ),
              );
            },
            child: MyPlayerCard(
              title: myData[i]["title"]!,
            //  pic: Image.asset("/assets/home_page_facilities/${myData[i]["photo"]}"),
            ),
          ),
        ),
      ),
    );
  }
}
