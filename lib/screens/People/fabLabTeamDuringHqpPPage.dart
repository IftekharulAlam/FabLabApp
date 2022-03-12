// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app/screens/myHomePage.dart';
import 'package:flutter/material.dart';

class FabLabTeamDuringHqpPPage extends StatelessWidget {
  final List names = [
    "Dr Mahady Hasan",
    "Prof. Farruk Ahmed",
    "Dr. Ferdows Zahid",
    "Dr.Khosru M.Salim",
    "Rubayed Mehedi Anik",
    "Mohammad Rejwan Uddin",
    "Sandipan Paul",
    "Shoaib Mirza",
    "Samiul Hoque"
  ];
  final List imageLoc = [
    "assets/images/Dr-mahady-Hasan.png",
    "assets/images/Prof.-Farruk-Ahmed.png",
    "assets/images/Dr.-Ferdows-Zahid.png",
    "assets/images/Dr.Khosru-M.Salim_.png",
    "assets/images/7.png",
    "assets/images/1.png",
    "assets/images/sandip.png",
    "assets/images/5.png",
    "assets/images/Samiul.png"
  ];
  final List posts = [
    "FLSM, Fab Lab IUB",
    "Deputy FLSM, Fab Lab IUB",
    "Member, Fab Lab Management Team",
    "Member, Fab Lab Management Team",
    "Office Manager & Accountant",
    "TechGuru (Nov’17-Sep’18)",
    "TechGuru (Jan’17-July’18)",
    "Fab Lab Operator",
    "Fab Lab Operator (Jan’17 – Feb’18)",
  ];

  FabLabTeamDuringHqpPPage({Key? key}) : super(key: key);

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
                  "Managment Team",
                  style: TextStyle(fontSize: 25,decoration: TextDecoration.underline,),
                ),
              ),
              for (int i = 0; i < 4; i++)
                NameProfile(name: names[i], imageloc: imageLoc[i], post: posts[i]),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Operations & Support Team",
                  style: TextStyle(fontSize: 25,decoration: TextDecoration.underline,),
                ),
              ),
              for (int i = 4; i < names.length; i++)
                NameProfile(name: names[i], imageloc: imageLoc[i], post: posts[i]),
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
  final String post;
  const NameProfile(
      {Key? key,
      required this.name,
      required this.imageloc,
      required this.post})
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
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(post, style: TextStyle(fontSize: 20)),
        ),
      ],
    );
  }
}
