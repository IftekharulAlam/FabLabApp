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
                  Navigator.pushNamed(context, 'Workshop_trainingPage');
                  break;
                case "Prototyping":
                  Navigator.pushNamed(context, 'PrototypePage');
                  break;
                case "Arts & Design":
                  Navigator.pushNamed(context, 'Arts_designPage');
                  break;
                //Tools & Machineries
                case "Heavy Machineries":
                  Navigator.pushNamed(context, 'HeavyMachineriesPage');
                  break;
                case "Electronics":
                  Navigator.pushNamed(context, 'ElectronicsPage');
                  break;
                case "Power Tools":
                  Navigator.pushNamed(context, 'PowerToolsPage');
                  break;
                //Research
                case "Projects":
                  Navigator.pushNamed(context, 'ProjectsPage');
                  break;
                case "Products":
                  Navigator.pushNamed(context, 'ProductsPage');
                  break;
                case "Publications":
                  Navigator.pushNamed(context, 'PublicationPage');
                  break;
                case "Collaborators":
                  Navigator.pushNamed(context, 'CollaboratorPage');
                  break;
                case "Idea Box":
                  Navigator.pushNamed(context, 'IdeaBoxPage');
                  break;
                //Events
                case "Techfest: Slot Registration":
                  Navigator.pushNamed(context, 'TechfestSlotPage');
                  break;

                default:
              }
            },
          ),
      ],
    );
  }
}
