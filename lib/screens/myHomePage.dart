// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:carousel_slider/carousel_slider.dart';

import 'package:app/Drawer/mydrawer.dart';
import 'package:app/data/playes.dart';
import 'package:app/screens/datailsPage.dart';
import 'package:app/screens/my_player_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> playersData = PlayersData().data;
  Image img1 = Image.asset("assets/images/About_us_page_Banner.jpeg");
  Image img2 = Image.asset("assets/images/Fab-Foundation-Banner.png");

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarFabLab(), drawer: MyDrawer(),
      body: ListView(
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

              //4th Image of Slider
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.ac_unit),
                color: Colors.blueAccent,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.ac_unit),
                color: Colors.blueAccent,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.ac_unit),
                color: Colors.blueAccent,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.ac_unit),
                color: Colors.blueAccent,
                onPressed: () {},
              ),
            ],
          )
        ],
      ),

      //GridViewContainer()
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
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemCount: 5,
          itemBuilder: (BuildContext context, int i) => InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    name: playersData[i]["name"]!,
                    chobi: Image.asset(
                      "assets/images/players/${playersData[i]["photo"]}",
                    ),
                    age: playersData[i]["age"]!,
                    role: playersData[i]["role"]!,
                  ),
                ),
              );
            },
            child: MyPlayerCard(
              name: playersData[i]["name"]!,
              chobi: Image.asset(
                "assets/images/players/${playersData[i]["photo"]}",
              ),
              age: playersData[i]["age"]!,
              role: playersData[i]["role"]!,
            ),
          ),
        ),
      ),
    );
  }
}
