import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup.dart';

class CitadelPopUpCard extends StatelessWidget {
  const CitadelPopUpCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopUpCard(
      tag: "citadel",
      imagePath: "assets/images/citadel/logos.jpeg",
      imagePathExt: "assets/images/citadel/day.png",
      experienceTitle: "Citadel and Citdal Securities",
      experienceSubtitle: "Discover Citadel Programme",
      experienceRole: "Spring Intern",
      experienceRoleExt: "Spring Intern",
      experienceDates: "Apr. 2021",
      link: "https://www.citadel.com/",
      description: [
        "Further explored the roles and opportunities of Quantitative Research, Software Engineering, and Investment and Trading at an industry leading hedge fund and market maker.",
        "Networked with staff and other participants and heard first-hand from the CEO, Peng Zhao, about the drive and vision which makes Citadel Securities the \“tip of the spear for technology to enter the financial world\”.",
      ],
    );
  }
}
