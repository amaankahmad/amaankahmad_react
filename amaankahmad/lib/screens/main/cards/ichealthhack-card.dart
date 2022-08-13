import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup.dart';

class ICHealthHackPopUpCard extends StatelessWidget {
  const ICHealthHackPopUpCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopUpCard(
      tag: "ichealthhack",
      imagePath: "assets/images/ichealthhack/logo.png",
      imagePathExt: "assets/images/ichealthhack/wearable.JPG",
      experienceTitle: "ICHealthHack20",
      experienceSubtitle: "Hackathon",
      experienceRole: "Project and Software Lead",
      experienceRoleExt: "Project and Software Lead",
      experienceDates: "Mar. 2020",
      link: "",
      description: [
        "Led a team of a prototype vest, using Arduino, that monitored the posture of athletes during training.",
        "Development of a software that tracks cardiovascular health and recurring postural issues, relaying feedback to user through haptic sensors built into the vest and our via our app built using Java and Android Studio.",
      ],
    );
  }
}
