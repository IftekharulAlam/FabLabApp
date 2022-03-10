// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:app/Drawer/mydrawer.dart';
import 'package:app/data/playes.dart';
import 'package:app/screens/datailsPage.dart';
import 'package:app/screens/my_player_card.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> playersData = PlayersData().data;

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Row(
              children: [
                SizedBox(
                  width: 25.0,
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
        ),
        drawer: MyDrawer(),
        body: GridViewContainer());
  }

  GridViewContainer() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 5,
          itemBuilder: (BuildContext context, int i) => InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailsPage(),
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
