// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:app/screens/myHomePage.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  final String pic;

  DetailsPage({
    Key? key,
    required this.title,
    required this.pic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyHomePage.appBarFabLab(),
     body: Stack(
        alignment: AlignmentDirectional.centerEnd,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 22.0,
              left: 12.0,
              right: 12.0,
              bottom: 12.0,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: const Color(0xff661EFF).withOpacity(0.2),
                  )
                ],
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage(pic),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 18.0,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 260.0, left: 30.0, right: 10.0),
            child: SizedBox(
              width: double.infinity,
              // color: Colors.redAccent.withOpacity(0.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$title",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
