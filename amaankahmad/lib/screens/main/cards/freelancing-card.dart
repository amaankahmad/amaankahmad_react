import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup.dart';

class FreelancePopUpCard extends StatelessWidget {
  const FreelancePopUpCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopUpCard(
      tag: "snooker",
      imagePath: "assets/images/snooker/detection.jpg",
      imagePathExt: "assets/images/snooker/reshaped tracking.png",
      experienceTitle: "Freelancing",
      experienceSubtitle: "Billiard Telemetry",
      experienceRole: "Software Engineer Intern",
      experienceRoleExt: "Software and Robotics Engineer Intern",
      experienceDates: "Jun. 2020 - Oct. 2020",
      link: "",
      description: [
        "Responsible for the development of prototypes, through use of Raspberry Pis,from early on in the discovery phase up until its minimum viable product (MVP).",
        "Incorporated Supervised Machine Learning, using TensorFlow, and Computer Vision, using OpenCV, to develop object detection and distance tracking software.",
        "Developed route optimisation software that would detect and map out routes for multiple rovers to traverse across obstacles without colliding with each other.",
      ],
    );
  }
}
