// ignore_for_file: prefer_const_constructors

import 'package:app/screens/myHomePage.dart';
import 'package:flutter/material.dart';

import 'screens/AboutUs/aboutFabLabIUBPage.dart';
import 'screens/AboutUs/contactUsPage.dart';
import 'screens/AboutUs/fabCharterPage.dart';
import 'screens/AboutUs/fabFoundationPage.dart';
import 'screens/AboutUs/faqPage.dart';
import 'screens/People/fabLabTeamDuringHqpPPage.dart';
import 'screens/People/fabLabTeamPage.dart';
import 'screens/People/fabbersPage.dart';
import 'screens/People/researchersPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      },
    );
  }
}
