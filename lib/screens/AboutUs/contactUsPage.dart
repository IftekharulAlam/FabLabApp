import 'package:app/screens/myHomePage.dart';
import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyHomePage.appBarFabLab(),
      body: Column(
        children: [Text("Fab Lab IUB")],
      ),
    );
  }
}
