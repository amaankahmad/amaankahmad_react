import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup.dart';

class RAFPopUpCard extends StatelessWidget {
  const RAFPopUpCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopUpCard(
      tag: "raf",
      imagePath: "assets/images/raf/logo.jpeg",
      imagePathExt: "assets/images/raf/Chief.jpg",
      experienceTitle: "RAF Aerospace Competition",
      experienceSubtitle: "Engineering Competition",
      experienceRole: "Project Lead",
      experienceDates: "Jan. 2018 - Sep. 2018",
      experienceRoleExt: "Project Lead",
      link:
          "https://schools-aerospace-challenge.com/wp-content/uploads/2018/12/12.-Team-CAN.pdf",
      description: [
        "Led as Team Captain for Finalist Team for the RAF Aerospace Challenge where we designed 3 technological adaptations to the RAF’s Merlin HC3 helicopter, aiming to solve issues that cause a huge amount of pilot accidents.",
        "Incorporation of thermoelectric theory to generate energy from the helicopter’s environment to power sensors and a drone to scan ahead of the vehicle during hot, sandy conditions, providing information on the safest route to take.",
        "Redesigned the propeller system to use ducts for more efficient lift generation with 26% reduced noise pollution.",
      ],
    );
  }
}
