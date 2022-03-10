import 'package:flutter/material.dart';

class myexpandedWidget extends StatelessWidget {
  late String title;

  late List subtitles;

  myexpandedWidget({Key? key, required this.title, required this.subtitles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(this.title),
      expandedAlignment: Alignment.centerLeft,
      children: <Widget>[
        for (int i = 0; i < subtitles.length; i++)
          ListTile(
            title: Text(subtitles[i]),
            onTap: () {
              Navigator.pop(context);
            },
          ),
      ],
    );
  }
}
