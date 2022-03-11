// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app/screens/myHomePage.dart';
import 'package:flutter/material.dart';

class FabFoundationPage extends StatelessWidget {
  const FabFoundationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyHomePage.appBarFabLab(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                "Fab Foundation",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 15, right: 15, bottom: 8),
              child: Image.asset("assets/images/Fab-Foundation-Banner.png"),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15, top: 8, right: 15, bottom: 8),
              child: Text(
                  "The Fab Foundation is a US non-profit 501(c) 3 organization that emerged from MIT’s center for Bits & Atoms Fab Lab Program. Formed in 2009 its mission is to support the growth of the international fab lab network, maintaining a coherent standard among every international branch. The foundation aims to provide access to tools, knowledge and financial means to educate, innovate and invent using technology and digital fabrication, allowing anyone to make anything and improve their lives and livelihood in the process."),
            ),
          ],
        ),
      ),
    );
  }
}
