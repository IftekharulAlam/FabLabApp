// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app/screens/myHomePage.dart';
import 'package:flutter/material.dart';

class FabLabTeamPage extends StatelessWidget {
  const FabLabTeamPage({Key? key}) : super(key: key);

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
                  "Director",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Image.asset("assets/images/Dr-mahady-Hasan.png"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Dr Mahady Hasan", style: TextStyle(fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Advisory Panel",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Image.asset("assets/images/Prof.-Farruk-Ahmed.png"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Text("Prof. Farruk Ahmed", style: TextStyle(fontSize: 20)),
              ),
              Image.asset("assets/images/Dr.-Ferdows-Zahid.png"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Text("Dr. Ferdows Zahid", style: TextStyle(fontSize: 20)),
              ),
              Image.asset("assets/images/Dr.Khosru-M.Salim_.png"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Text("Dr.Khosru M.Salim", style: TextStyle(fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Research & Development Officer",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Image.asset("assets/images/7.png"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Text("Rubayed Mehedi Anik", style: TextStyle(fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Support Team",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Image.asset("assets/images/5.png"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Text("Shoaib Mirza", style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
