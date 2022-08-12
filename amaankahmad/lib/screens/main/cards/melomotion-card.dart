import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup.dart';

class KALLISTONPopUpCard extends StatelessWidget {
  const KALLISTONPopUpCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopUpCard(
      tag: "kalliston",
      imagePath: "assets/images/kalliston/logo.png",
      imagePathExt: "assets/images/kalliston/app.png",
      experienceTitle: "KALLISTON",
      experienceSubtitle: "-1",
      experienceRole: "Founder and Project Lead",
      experienceRoleExt: "Founder, Project and Software Lead",
      experienceDates: "Jan. 2021 - Present",
      link: "https://www.kalliston.co.uk",
      description: [
        "Developing a cross-platform app using Flutter that allows users to track their workout progress and share with friends.",
        "Building an AI to suggest workout structure using a variety of exercises based on the users’ goals and progress history.",
        "Providing analytics based on data collected on the individual’s progress, connected via Firebase.",
        "Pitched at a Business Launchpad event to win funding that helps accelerate the release of this project on a larger scale.",
        "Developing my project management skills as I lead a team of 5, to develop this project further and release to the public.",
      ],
    );
  }
}
