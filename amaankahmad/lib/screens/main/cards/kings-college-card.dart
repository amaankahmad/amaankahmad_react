import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup.dart';

class KingsCollegePopUpCard extends StatelessWidget {
  const KingsCollegePopUpCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopUpCard(
      tag: "5G",
      imagePath: "assets/images/5G/logo.png",
      imagePathExt: "assets/images/5G/robotic_surgery.jpeg",
      experienceTitle: "King’s College London",
      experienceSubtitle: "5G Robotic Surgery",
      experienceRole: "Technology Intern",
      experienceDates: "Apr. 2018 - Sep. 2018",
      experienceRoleExt: "Technology Intern",
      link: "https://www.kcl.ac.uk/research/ctr",
      description: [
        "Collaborated with a team of 3 alongside Professor Mischa Dohler on developing a proof of concept for Robotic Surgery (using Haptic Arm devices) via 5G wireless communications.",
        "Optimised the reduction noise of the signals being received by 17% in order to obtain a smoother movement pattern.",
      ],
    );
  }
}
