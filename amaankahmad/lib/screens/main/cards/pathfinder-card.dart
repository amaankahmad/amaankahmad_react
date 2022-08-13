import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup.dart';

class PathFinderPopUpCard extends StatelessWidget {
  const PathFinderPopUpCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopUpCard(
      tag: "pathfinder",
      imagePath: "assets/images/pathfinder/logo.png",
      imagePathExt: "assets/images/pathfinder/banner.png",
      experienceTitle: "PathFinder",
      experienceSubtitle: "-1",
      experienceRole: "Project and Software Lead",
      experienceRoleExt: "Co-Founder, Project and Software Lead",
      experienceDates: "Mar. 2021 - Present",
      link: "",
      description: [
        "Leading the development of a web-app, using React that aims to increase the accessibility of educational resources by collating relevant information and structuring this into a pathway that pushes students to reach their potential.",
        "Organising the external events and deadlines for super curricular activity applications that are nearby on a calendar.",
        "Building of personalised and structured roadmaps for students to get closer to achieving their future goals.",
      ],
    );
  }
}
