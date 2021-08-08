import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/main/components/links.dart';
import 'package:flutter_profile/screens/main/custom_widgets/hover_button.dart';
import 'package:flutter_profile/screens/main/custom_widgets/nav_button.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatefulWidget {
  final Function() aboutMe;
  final Function() experience;
  final Function() awards;

  NavBar(
      {Key? key,
      required this.aboutMe,
      required this.experience,
      required this.awards})
      : super(key: key);

  @override
  _NavBarState createState() => _NavBarState(aboutMe, experience, awards);
}

class _NavBarState extends State<NavBar> {
  final Function() aboutMe;
  final Function() experience;
  final Function() awards;

  _NavBarState(this.aboutMe, this.experience, this.awards);
  openURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch URL";
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1A1E36), Colors.transparent],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.85,
            0.95,
          ],
        ),
      ),
      child: Padding(
        padding: (screenWidth > 450)
            ? const EdgeInsets.only(
                left: defaultPadding,
                bottom: defaultPadding / 2,
                right: defaultPadding / 2)
            : const EdgeInsets.only(
                left: defaultPaddingSmall,
                bottom: defaultPaddingSmall / 2,
                right: defaultPaddingSmall / 2),
        child: (Responsive.isTablet(context))
            ? null
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  HoverButton(builder: (isHovering) {
                    final textColor =
                        isHovering ? Colors.greenAccent : Colors.white;
                    return Text(
                      "Amaan Ahmad",
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                    );
                  }),
                  Padding(
                    padding: (screenWidth > 450)
                        ? const EdgeInsets.only(top: defaultPadding / 4)
                        : const EdgeInsets.only(top: defaultPaddingSmall / 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: aboutMe,
                          child: NavButton(
                            sectionName: "About Me",
                          ),
                        ),
                        GestureDetector(
                          onTap: experience,
                          child: NavButton(
                            sectionName: "Experience",
                          ),
                        ),
                        GestureDetector(
                          onTap: awards,
                          child: NavButton(
                            sectionName: "Awards",
                          ),
                        ),
                        // NavButton(sectionName: "Awards"),
                        // NavButton(sectionName: "My Hobbies"),
                        GestureDetector(
                          onTap: () {
                            openURL("mailto:amaankahmad@gmail.com");
                          },
                          child: NavButton(
                            sectionName: "Contact",
                          ),
                        ),
                        if (screenWidth > 1310)
                          Padding(
                            padding: (screenWidth > 450)
                                ? const EdgeInsets.only(
                                    bottom: defaultPadding / 2)
                                : const EdgeInsets.only(
                                    bottom: defaultPadding / 2),
                            child: Links(),
                          ),
                      ],
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
