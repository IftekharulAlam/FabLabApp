// ignore_for_file: prefer_const_constructors

import 'package:app/screens/myHomePage.dart';
import 'package:flutter/material.dart';

import 'screens/AboutUs/aboutFabLabIUBPage.dart';
import 'screens/AboutUs/contactUsPage.dart';
import 'screens/AboutUs/fabCharterPage.dart';
import 'screens/AboutUs/fabFoundationPage.dart';
import 'screens/AboutUs/faqPage.dart';
import 'screens/Blog/blogPage.dart';
import 'screens/Events/techfestSlotPage.dart';
import 'screens/Facilities/arts_designPage.dart';
import 'screens/Facilities/prototypePage.dart';
import 'screens/Facilities/workshop_trainingPage.dart';
import 'screens/Membership/membershipPage.dart';
import 'screens/People/fabLabTeamDuringHqpPPage.dart';
import 'screens/People/fabLabTeamPage.dart';
import 'screens/People/fabbersPage.dart';
import 'screens/People/researchersPage.dart';
import 'screens/Research/collaboratorPage.dart';
import 'screens/Research/ideaBoxPage.dart';
import 'screens/Research/productsPage.dart';
import 'screens/Research/projectsPage.dart';
import 'screens/Research/publicationPage.dart';
import 'screens/Tools&Machineries/electronicsPage.dart';
import 'screens/Tools&Machineries/heavyMachineriesPage.dart';
import 'screens/Tools&Machineries/powerToolsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FabLab IUB",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        drawerTheme: DrawerThemeData(
          backgroundColor: Colors.white,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.w500),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        //About Uu
        'AboutFabLabIUBPage': (context) => AboutFabLabIUBPage(),
        'ContactUsPage': (context) => ContactUsPage(),
        'FabCharterPage': (context) => FabCharterPage(),
        'FabFoundationPage': (context) => FabFoundationPage(),
        'FaqPage': (context) => FaqPage(),
        //People
        'FabLabTeamPage': (context) => FabLabTeamPage(),
        'ResearchersPage': (context) => ResearchersPage(),
        'FabbersPage': (context) => FabbersPage(),
        'FabLabTeamDurinHqpPPage': (context) => FabLabTeamDuringHqpPPage(),
        //Research
        'CollaboratorPage': (context) => CollaboratorPage(),
        'IdeaBoxPage': (context) => IdeaBoxPage(),
        'ProductsPage': (context) => ProductsPage(),
        'ProjectsPage': (context) => ProjectsPage(),
        'PublicationPage': (context) => PublicationPage(),
        //Tools and mechaniries
        'ElectronicsPage': (context) => ElectronicsPage(),
        'HeavyMachineriesPage': (context) => HeavyMachineriesPage(),
        'PowerToolsPage': (context) => PowerToolsPage(),
        //membership
        'MembershipPage': (context) => MembershipPage(),

        //facilities
        'Arts_designPage': (context) => Arts_designPage(),
        'PrototypePage': (context) => PrototypePage(),
        'Workshop_trainingPage': (context) => Workshop_trainingPage(),
        //events
        'TechfestSlotPage': (context) => TechfestSlotPage(),
        //Blog
        'BlogPage': (context) => BlogPage(),
      },
    );
  }
}
