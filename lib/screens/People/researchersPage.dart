// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app/screens/myHomePage.dart';
import 'package:flutter/material.dart';

class ResearchersPage extends StatelessWidget {
  ResearchersPage({Key? key}) : super(key: key);
  final List names = [
    "Md. Asif Bin Khaled",
    "Md. Saiful Islam",
    "Sourajit Saha",
    "Sohel Rana",
    "Md. Hana Sultan Chowdhury"
  ];
  final List imageLoc = [
    "assets/images/2.png",
    "assets/images/Md.-Saiful-Islam.png",
    "assets/images/6.png",
    "assets/images/SohelRana-3.png",
    "assets/images/hana-sultan.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyHomePage.appBarFabLab(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Our Researchers",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              for (int i = 0; i < names.length; i++)
                NameProfile(name: names[i], imageloc: imageLoc[i]),
            ],
          ),
        ),
      ),
    );
  }
}

class NameProfile extends StatelessWidget {
  final String name;
  final String imageloc;
  const NameProfile({Key? key, required this.name, required this.imageloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(width: 200, height: 200, child: Image.asset(imageloc)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(name, style: TextStyle(fontSize: 20)),
        ),
      ],
    );
  }
}
