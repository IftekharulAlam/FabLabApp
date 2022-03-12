// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/Drawer/expandendWidget.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(left: 10),
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Image.asset("assets/images/fablabLogo.jpeg"),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          myexpandedWidget(title: "About Us", subtitles: [
            "Fablab IUB",
            "Fab Foundation",
            "Fab Charter",
            "Contact Us",
            "FAQ"
          ]),
          myexpandedWidget(title: "People", subtitles: [
            "Fablab Team",
            "Researchers",
            "Fabbers",
            "Fab Lab Team \n During HEQEP Period"
          ]),
          myexpandedWidget(title: "Facilities", subtitles: [
            "Workshop & Training",
            "Prototyping",
            "Arts & Design"
          ]),
          myexpandedWidget(title: "Tools & Machineries", subtitles: [
            "Heavy Machineries",
            "Electronics",
            "Power Tools",
          ]),
          myexpandedWidget(title: "Research", subtitles: [
            "Projects",
            "Products",
            "Publications",
            "Collaborators",
            "Idea Box"
          ]),
          myexpandedWidget(
              title: "Events", subtitles: ["Techfest: Slot Registration"]),
          ListTile(
            title: Text('Blog'),
            onTap: () {
              Navigator.pushNamed(context, 'BlogPage');
            },
          ),
          ListTile(
            title: Text('Membership'),
            onTap: () {
              Navigator.pushNamed(context, 'MembershipPage');
            },
          ),
        ],
      ),
    );
  }
}
