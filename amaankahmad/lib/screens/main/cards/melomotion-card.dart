import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup.dart';

class MelomotionPopUpCard extends StatelessWidget {
  const MelomotionPopUpCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopUpCard(
      tag: "melomotion",
      imagePath: "assets/images/melomotion/logo.png",
      imagePathExt: "assets/images/melomotion/app.png",
      experienceTitle: "John Chilton School",
      experienceSubtitle: "Melomotion Physiotherapy App",
      experienceRole: "Project and Software Lead",
      experienceDates: "Oct. 2020 - Jun. 2021",
      experienceRoleExt:
          "Project Lead, App Development and Machine Learning Lead",
      link: "https://youtu.be/yGAANo65Fyo",
      description: [
        "Built a wearable-app system, using Arduino, to promote physiotherapy for children with physiological / neurological disabilities by allowing them to create music whilst performing the movements in their rehabilitation programme, developed by their Physiotherapist.",
        "Led the development of a cross-platform app using Flutter and Firebase, where Physiotherapists can input the exercises into the child’s rehabilitative program.",
        "Integrated Machine Learning Vision using TensorFlow Lite to detect the position of users’ joints throughout exercise and perform analytics on exercise form, tracking users’ progress over time and relaying this information to the Physiotherapist.",
        "Coordinated with the music team to develop an algorithm to unlock new elements of songs as reward for progressing through the exercise whilst maintaining engaging and melodic music.",
      ],
    );
  }
}
