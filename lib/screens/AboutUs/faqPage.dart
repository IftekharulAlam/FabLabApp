// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/screens/myHomePage.dart';
import 'package:flutter/material.dart';

class FaqPage extends StatelessWidget {
  final List question = [
    "Is the FAb Lab facilities free to use?",
    "Is there a membership procedure?",
    "How to get in touch with us?",
    "What can you help me with ?",
    "Still need help? Send us a note!"
  ];
  final List answer = [
    "Yes, the Fab Lab is free for all who wish to use it, for now.",
    "No, there is no membership procedure. Everyone is Welcome to use the Fab Lab , But please make sure to contact us beforehand so that we can fit you in our schedule",
    "The easiest way to contact us is via our facebook page. You could also just drop by directly at our lab.",
    "If you have projects to prototype and fabricate we can help bring them to physical form through our tools and machines. A list of machines with descriptions of what services they provide is given in our facilities page. Along with access to equipment we will also provide guidance on how to operate them. This does not mean we will finish your projects for you, we’ll just facilitate and mentor you to get it done. Other than that we also hold regular workshops regarding fabrication and technology which you are welcome to join.",
    "For any other questions, please write us at info@fablabiub.com or call us on +01717842553"
  ];
  FaqPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyHomePage.appBarFabLab(),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      "Frequently Asked Questions",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Here Are Some Common Questions About FabLab IUB",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            for (int i = 0; i < question.length; i++)
              FaqPageQuestionAnswer(
                title1: question[i],
                title2: answer[i],
              )
          ],
        ),
      ),
    );
  }
}

class FaqPageQuestionAnswer extends StatelessWidget {
  final String title1;
  final String title2;
  const FaqPageQuestionAnswer(
      {Key? key, required this.title1, required this.title2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 8),
          child: Text(
            title1,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 15, top: 2, right: 15, bottom: 8),
          child: Text(
            title2,
          ),
        ),
      ],
    );
  }
}
