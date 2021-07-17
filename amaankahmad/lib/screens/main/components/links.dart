import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/custom_widgets/hover_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Links extends StatelessWidget {
  const Links({Key? key}) : super(key: key);

  openURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch URL";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          HoverButton(
            builder: (isHovering) {
              final color = isHovering ? Colors.green[300] : Colors.grey;
              // final iconSize = isHovering ? 35.0 : 30.0;
              return IconButton(
                // iconSize: iconSize,
                onPressed: () {
                  openURL("https://www.linkedin.com/in/amaankahmad/");
                },
                icon: SvgPicture.asset(
                  "assets/icons/linkedin.svg",
                  color: color,
                ),
              );
            },
          ),
          HoverButton(
            builder: (isHovering) {
              final color = isHovering ? Colors.green[300] : Colors.grey;
              // final iconSize = isHovering ? 30.0 : 25.0;
              return IconButton(
                // iconSize: iconSize,
                onPressed: () {
                  openURL("mailto:amaankahmad@gmail.com");
                },
                icon: Icon(
                  Icons.email,
                  color: color,
                ),
              );
            },
          ),
          HoverButton(
            builder: (isHovering) {
              final color = isHovering ? Colors.green[300] : Colors.grey;
              // final iconSize = isHovering ? 35.0 : 30.0;
              return IconButton(
                // iconSize: iconSize,
                onPressed: () {
                  openURL("https://github.com/amaankahmad");
                },
                icon: SvgPicture.asset(
                  "assets/icons/github.svg",
                  color: color,
                ),
              );
            },
          ),
          HoverButton(
            builder: (isHovering) {
              final color = isHovering ? Colors.green[300] : Colors.grey;
              // final iconSize = isHovering ? 30.0 : 25.0;
              return IconButton(
                // iconSize: iconSize,
                onPressed: () {
                  openURL("https://www.facebook.com/amaan.ahmad.71697");
                },
                icon: Icon(
                  Icons.facebook,
                  color: color,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
