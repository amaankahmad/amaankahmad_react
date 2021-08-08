import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/custom_widgets/hover_button.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  final String link;
  const LinkButton({Key? key, required this.link}) : super(key: key);

  openURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch URL";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding),
      child: TextButton(
        onPressed: () {},
        child: HoverButton(
          builder: (isHovering) {
            final bgColor = isHovering ? Colors.blue : Colors.green[300];
            final textColor = isHovering ? Colors.white : darkColor;
            final fWeight = isHovering ? FontWeight.w900 : FontWeight.w900;
            return Padding(
              padding: const EdgeInsets.only(bottom: 7.0),
              child: GestureDetector(
                onTap: () {
                  openURL(link);
                },
                child: Container(
                  width: 135,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: bgColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 8.0),
                    child: Center(
                      child: Text(
                        "Click me!",
                        style: TextStyle(
                            color: textColor,
                            fontWeight: fWeight,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
