import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/main/custom_widgets/animated_my_projects.dart';
import 'package:flutter_profile/screens/main/custom_widgets/explore_button.dart';

class HomeBanner extends StatefulWidget {
  final Function() buttonPressed;

  const HomeBanner({
    Key? key,
    required this.buttonPressed,
  }) : super(key: key);

  @override
  _HomeBannerState createState() => _HomeBannerState(buttonPressed);
}

class _HomeBannerState extends State<HomeBanner> {
  final Function() buttonPressed;

  _HomeBannerState(this.buttonPressed);
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/imperial/Imperial.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: (screenWidth > 450)
                ? const EdgeInsets.only(
                    top: defaultPadding / 2,
                    left: defaultPadding,
                    right: defaultPadding / 2,
                  )
                : const EdgeInsets.only(
                    top: defaultPaddingSmall / 2,
                    left: defaultPaddingSmall,
                    right: defaultPaddingSmall / 2,
                  ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    if (Responsive.isDesktop(context))
                      SizedBox(
                        height: 54,
                      ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          if (screenWidth > 600) MyProjectsAnimatedText(),
                          if (screenWidth > 600)
                            ExploreButton(
                              onPressed: buttonPressed,
                            ),
                          if (screenWidth > 600)
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: defaultPadding / 2),
                              child: Container(
                                height: screenHeight * 0.15,
                                child: Row(
                                  children: [
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(
                                            defaultPadding * 0.85),
                                        child: Image.asset(
                                            "assets/images/imperial/Imperial College London Logo.png"),
                                      ),
                                    ),
                                    Container(
                                      child: Image.asset(
                                          "assets/images/stpauls/SPS_logo_transparent.png"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
