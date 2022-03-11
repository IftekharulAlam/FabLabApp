import 'package:flutter/material.dart';

class myexpandedWidget extends StatelessWidget {
  late String title;

  late List subtitles;

  myexpandedWidget({Key? key, required this.title, required this.subtitles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      expandedAlignment: Alignment.centerLeft,
      children: <Widget>[
        for (int i = 0; i < subtitles.length; i++)
          ListTile(
            title: Text(subtitles[i]),
            onTap: () {
              switch (subtitles[i]) {
                case "Fablab IUB":
                  Navigator.pushNamed(context, 'AboutFabLabIUBPage');
                  break;
                case "Fab Foundation":
                  Navigator.pushNamed(context, 'FabFoundationPage');
                  break;
                case "Fab Charter":
                  Navigator.pushNamed(context, 'FabCharterPage');
                  break;
                case "Contact Us":
                  Navigator.pushNamed(context, 'ContactUsPage');
                  break;
                case "FAQ":
                  Navigator.pushNamed(context, 'FaqPage');
                  break;
                default:
              }
            },
          ),
      ],
    );
  }
}
