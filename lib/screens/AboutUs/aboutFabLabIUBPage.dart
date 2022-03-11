// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app/screens/myHomePage.dart';
import 'package:flutter/material.dart';

class AboutFabLabIUBPage extends StatelessWidget {
  const AboutFabLabIUBPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyHomePage.appBarFabLab(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: Text("About Fab Lab IUB",
              style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 8),
              child: Image.asset("assets/images/About_us_page_Banner.jpeg"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 8, right: 15, bottom: 8),
              child: Text(
                  "Fab Lab IUB is a collaborative effort that aims to further realize the vision of the Fab Foundation. We plan to achieve tangible milestones in the democratization of fabrication technologies. As a sub project of HEQEP under the University Grants Commission of Bangladesh, the purpose of Fab Lab IUB is to facilitate learning, provide training and give access to fabrication tools while keeping open access to nurture and provide for the local maker community. Keeping in touch with the spirit of Fab Lab and the Fab Foundation, we believe that multidisciplinary thinking can usher a new trend of providing impactful solutions to local problems for our society and the industries."),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 8, right: 15, bottom: 8),
              child: Text(
                  "To bring these goals into fruition, our team is relentlessly hard working and sincere regarding proper administration, guidance and commitment towards projects, collaborations and innovation. We have the most sincere, devoted group of students and supervising faculty members working for the lab, whose fortitude and adherence to the spirit of growth truly transform our Fab Lab into a living, breathing community maker-space. We are ever excited to meet new people and expand our network, providing training, arranging workshops, seminars and make-a-thons in order to grow as a community."),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 8, right: 15, bottom: 8),
              child: Text(
                  "If you are interested in using the lab and the facilities it provides, feel free to drop by or give us a knock on our Facebook Page. We will provide all we can towards helping you realize your dream and are constantly looking to expand and unite the community. Because after all, it is the people and the maker spirit that makes up a maker-space."),
            )
          ],
        ),
      ),
    );
  }
}
