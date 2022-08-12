import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/main/cards/citadel-card.dart';
import 'package:flutter_profile/screens/main/cards/equinox-card.dart';
import 'package:flutter_profile/screens/main/cards/freelancing-card.dart';
import 'package:flutter_profile/screens/main/cards/kings-college-card.dart';
import 'package:flutter_profile/screens/main/cards/ocado-tech-card.dart';
import 'package:flutter_profile/screens/main/cards/twilio-card.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: (screenWidth > 450)
          ? const EdgeInsets.only(
              left: defaultPadding * 4,
              right: defaultPadding * 4,
              top: defaultPadding * 2)
          : const EdgeInsets.only(
              left: defaultPaddingSmall * 4,
              right: defaultPaddingSmall * 4,
              top: defaultPaddingSmall * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Experience:",
              style: (screenWidth > 560)
                  ? TextStyle(color: Colors.greenAccent, fontSize: 48)
                  : TextStyle(color: Colors.greenAccent, fontSize: 36),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.05,
          ),
          (screenWidth > 560)
              ? ((Responsive.isDesktop(context))
                  ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TwilioPopUpCard(),
                            OcadoTechnologyPopUpCard(),
                            EquinoxPopUpCard(),   
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CitadelPopUpCard(),
                            FreelancePopUpCard(),
                            KingsCollegePopUpCard(),
                          ],
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TwilioPopUpCard(),
                            OcadoTechnologyPopUpCard(),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            EquinoxPopUpCard(),   
                            CitadelPopUpCard(),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FreelancePopUpCard(),
                            KingsCollegePopUpCard(),
                          ],
                        ),
                      ],
                    ))
              : Center(
                  child: Column(
                    children: [
                      TwilioPopUpCard(),
                      OcadoTechnologyPopUpCard(),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      EquinoxPopUpCard(),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      CitadelPopUpCard(),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      FreelancePopUpCard(),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      KingsCollegePopUpCard(),
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
