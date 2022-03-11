// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app/screens/People/researchersPage.dart';
import 'package:app/screens/myHomePage.dart';
import 'package:flutter/material.dart';

class FabbersPage extends StatelessWidget {
  final List names = [
    "Iftekharul Alam",
    "Noor E Sadman",
    "Noureen Islam",
    "Jahid Hasan",
    "Hana Sultan",
    "Tahfizul Hasan Zihan",
    "Mohammad Faizul Hossain"
  ];
  final List imageLoc = [
    "assets/images/iftekhar.jpeg",
    "assets/images/arnoy.jpeg",
    "assets/images/nourin.jpeg",
    "assets/images/rovin.jpeg",
    "assets/images/hana-sultan.jpeg",
    "assets/images/zihan.jpeg",
    "assets/images/faizul.jpeg"
  ];

  FabbersPage({Key? key}) : super(key: key);

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
                  "Fabbers",
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
