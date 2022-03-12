// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyPlayerCard extends StatelessWidget {
  final String name;
  final Image chobi;
  final String age;
  final String role;

  const MyPlayerCard({
    Key? key,
    required this.name,
    required this.chobi,
    required this.age,
    required this.role,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: AlignmentDirectional.centerEnd,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 22.0,
            left: 12.0,
            right: 12.0,
            bottom: 12.0,
          ),
          //  child: Image.asset("assets/workshops/img1.jpeg"),
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
              image: const DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage("assets/workshops/img1.jpeg"),
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
                          name,
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
        )

        // chobi,
        // Padding(
        //   padding: const EdgeInsets.only(top: 100.0, left: 30.0, right: 10.0),
        //   child: SizedBox(
        //     width: double.infinity,
        //     // color: Colors.redAccent.withOpacity(0.5),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           "Age: $age",
        //           style: TextStyle(
        //             fontWeight: FontWeight.w500,
        //             fontSize: 18.0,
        //           ),
        //         ),
        //         Text(
        //           "Role: $role",
        //           style: TextStyle(
        //             // fontWeight: FontWeight.w500,
        //             fontSize: 16.0,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // )
      ],
    );
  }
}
