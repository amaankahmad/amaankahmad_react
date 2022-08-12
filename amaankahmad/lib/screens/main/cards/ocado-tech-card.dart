import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup.dart';

class OcadoTechnologyPopUpCard extends StatelessWidget {
  const OcadoTechnologyPopUpCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopUpCard(
      tag: "ocado tech",
      imagePath: "assets/images/ocado/ocado-logo.png",
      imagePathExt: "assets/images/ocado/ocado-arm.jpg",
      experienceTitle: "Ocado Technology",
      experienceSubtitle: "New Concept Development Team",
      experienceRole: "Software Intern",
      experienceRoleExt: "Software Development Engineer Intern",
      experienceDates: "Jul. 2021 - Jun. 2022",
      link: "https://www.ocadogroup.com/about-us/ocado-technology",
      description: [
        "Responsible for the development of software for the next generation of Ocado Technology’s Customer Fulfilment Centres.",
        "Developing and designing a Computer Vision system (using OpenCV) that tracks items throughout the fulfilment centres using stereo cameras.",
        "Incorporating PyTorch to train a YOLO v5 object detector on a custom dataset.",
        "Building a user friendly custom graphical user interface (GUI) with Tkinter for warehouse staff.",
      ],
    );
  }
}
