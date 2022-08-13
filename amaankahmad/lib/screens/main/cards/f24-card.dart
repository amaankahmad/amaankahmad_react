import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup.dart';

class F24PopUpCard extends StatelessWidget {
  const F24PopUpCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopUpCard(
      tag: "f24",
      imagePath: "assets/images/f24/logo.png",
      imagePathExt: "assets/images/f24/car.jpg",
      experienceTitle: "Greenpower F24+",
      experienceSubtitle: "Electric Racecar Competition",
      experienceRole: "Engineer",
      experienceDates: "Nov. 2017 - Mar. 2019",
      experienceRoleExt:
          "Chassis, Gear train & Bodywork Engineer, Head of Marketing",
      link: "https://www.greenpower.co.uk/news/2018-f24-f24-season-roundup",
      description: [
        "Developed an electric race car from scratch for a competition to race against other schools.",
        "Headed the Marketing team and collaborated in the Chassis & Bodywork, Gear Train and Sponsorship teams.",
        "Won the IET Engineering Award in F24 & F24+ 2018 Roundup.",
      ],
    );
  }
}
