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
                //About Us
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
                //People
                case "Fablab Team":
                  Navigator.pushNamed(context, 'FabLabTeamPage');
                  break;
                case "Researchers":
                  Navigator.pushNamed(context, 'ResearchersPage');
                  break;
                case "Fabbers":
                  Navigator.pushNamed(context, 'FabbersPage');
                  break;
                case "Fab Lab Team \n During HEQEP Period":
                  Navigator.pushNamed(context, 'FabLabTeamDurinHqpPPage');
                  break;

                //Facilities
                case "Workshop & Training":
                  Navigator.pushNamed(context, 'FaqPage');
                  break;
                case "Prototyping":
                  Navigator.pushNamed(context, 'FaqPage');
                  break;
                case "Arts & Design":
                  Navigator.pushNamed(context, 'FaqPage');
                  break;
                //Tools & Machineries
                case "Heavy Machineries":
                  Navigator.pushNamed(context, 'FaqPage');
                  break;
                case "Electronics":
                  Navigator.pushNamed(context, 'FaqPage');
                  break;
                case "Power Tools":
                  Navigator.pushNamed(context, 'FaqPage');
                  break;
                //Research
                case "Projects":
                  Navigator.pushNamed(context, 'FaqPage');
                  break;
                case "Products":
                  Navigator.pushNamed(context, 'FaqPage');
                  break;
                case "Publications":
                  Navigator.pushNamed(context, 'FaqPage');
                  break;
                case "Collaborators":
                  Navigator.pushNamed(context, 'FaqPage');
                  break;
                case "Idea Box":
                  Navigator.pushNamed(context, 'FaqPage');
                  break;
                //Events
                case "Techfest: Slot Registration":
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
