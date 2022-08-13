import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/main/cards/f24-card.dart';
import 'package:flutter_profile/screens/main/cards/ichealthhack-card.dart';
import 'package:flutter_profile/screens/main/cards/kalliston-card.dart';
import 'package:flutter_profile/screens/main/cards/melomotion-card.dart';
import 'package:flutter_profile/screens/main/cards/pathfinder-card.dart';
import 'package:flutter_profile/screens/main/cards/raf-card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({Key? key}) : super(key: key);

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
              "My Projects:",
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
                            PathFinderPopUpCard(),
                            KALLISTONPopUpCard(),
                            MelomotionPopUpCard(),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ICHealthHackPopUpCard(),
                            RAFPopUpCard(),
                            F24PopUpCard(),
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
                            PathFinderPopUpCard(),
                            KALLISTONPopUpCard(),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            MelomotionPopUpCard(),
                            ICHealthHackPopUpCard(),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RAFPopUpCard(),
                            F24PopUpCard(),
                          ],
                        ),
                      ],
                    ))
              : Center(
                  child: Column(
                  children: [
                    PathFinderPopUpCard(),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    KALLISTONPopUpCard(),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    MelomotionPopUpCard(),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    ICHealthHackPopUpCard(),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    RAFPopUpCard(),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    F24PopUpCard(),
                  ],
                ),
            ),
        ],
      ),
    );
  }
}
