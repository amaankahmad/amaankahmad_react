import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup.dart';

class EquinoxPopUpCard extends StatelessWidget {
  const EquinoxPopUpCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopUpCard(
      tag: "e.quinox",
      imagePath: "assets/images/equinox/square logo.jpeg",
      imagePathExt: "assets/images/equinox/website.png",
      experienceTitle: "E.quinox",
      experienceSubtitle: "Greenweb",
      experienceRole: "Project Lead",
      experienceRoleExt: "Software Development Engineer Intern",
      experienceDates: "Jan. 2020 - Present",
      link: "http://e.quinox.org/",
      description: [
        "Developing a data intensive software solution to the widespread issue of small holder farming in Rwanda through the use of Machine Learning via TensorFlow to de-risk loans.",
        "Integrating with Internet of Things (IoT) devices to gather information from the crop-fields and combining this with satellite imaging and previous climate data to predict environmental effects on agriculture to help farmers better prepare.",
      ],
    );
  }
}
