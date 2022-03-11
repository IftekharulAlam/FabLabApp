// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/screens/myHomePage.dart';
import 'package:flutter/material.dart';

class FabCharterPage extends StatelessWidget {
  final List question = [
    "What’s in a fab lab?",
    "What does the fab lab network provide?",
    "Who can use a fab lab?",
    "What are your responsibilities?",
    "Who owns fab lab inventions?",
    "How can businesses use a fab lab?"
  ];
  final List answer = [
    "Fab labs share an evolving inventory of core capabilities to make (almost) anything, allowing people and projects to be shared",
    "Operational, educational, technical, financial, and logistical assistance beyond what’s available within one lab",
    "Fab labs are available as a community resource, offering open access for individuals as well as scheduled access for programs",
    "safety: not hurting people or machines \n operations: assisting with cleaning, maintaining, and improving the lab \n knowledge: contributing to documentation and instruction",
    "Designs and processes developed in fab labs can be protected and sold however an inventor chooses, but should remain available for individuals to use and learn from",
    "Commercial activities can be prototyped and incubated in a fab lab, but they must not conflict with other uses, they should grow beyond rather than within the lab, and they are expected to benefit the inventors, labs, and networks that contribute to their success"
  ];
  FabCharterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyHomePage.appBarFabLab(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  "Fab Charter",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            for (int i = 0; i < question.length; i++)
              FabCharterQuestionAnswer(
                title1: question[i],
                title2: answer[i],
              )
          ],
        ),
      ),
    );
  }
}

class FabCharterQuestionAnswer extends StatelessWidget {
  final String title1;
  final String title2;
  const FabCharterQuestionAnswer(
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
