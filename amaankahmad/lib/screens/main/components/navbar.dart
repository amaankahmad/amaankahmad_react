import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/links.dart';
import 'package:flutter_profile/screens/main/custom_widgets/hover_button.dart';
import 'package:flutter_profile/screens/main/custom_widgets/nav_button.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xFF1A1E36),
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
        padding: const EdgeInsets.only(
            left: defaultPadding,
            bottom: defaultPadding / 2,
            right: defaultPadding / 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            HoverButton(builder: (isHovering) {
              final textColor = isHovering ? Colors.greenAccent : Colors.white;
              return Text(
                "Amaan Ahmad",
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
              );
            }),
            Padding(
              padding: const EdgeInsets.only(top: defaultPadding / 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  NavButton(sectionName: "About Me"),
                  NavButton(sectionName: "Experience"),
                  NavButton(sectionName: "Awards"),
                  // NavButton(sectionName: "Awards"),
                  // NavButton(sectionName: "My Hobbies"),
                  NavButton(sectionName: "Contact"),
                  Padding(
                    padding: const EdgeInsets.only(bottom: defaultPadding / 2),
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
