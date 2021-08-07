import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/custom_widgets/hover_button.dart';

class NavButton extends StatefulWidget {
  const NavButton({
    Key? key,
    required this.sectionName,
  }) : super(key: key);

  final String sectionName;

  @override
  _NavButtonState createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    return HoverButton(builder: (isHovering) {
      final screenHeight = MediaQuery.of(context).size.height;
      final screenWidth = MediaQuery.of(context).size.width;
      final undColor = isHovering ? Colors.tealAccent : Colors.white54;
      final undThick = isHovering ? 3.0 : 2.0;
      final textColor = isHovering ? Colors.greenAccent : Colors.white70;
      final fWeight = isHovering ? FontWeight.w900 : FontWeight.bold;
      final sizeWidth = (screenWidth > 1440)
          ? (isHovering ? 1440 * 0.10 : 1440 * 0.09)
          : (isHovering ? screenWidth * 0.10 : screenWidth * 0.09);
      final sizeHeight =
          isHovering ? screenHeight * 0.045 : screenHeight * 0.04;
      final fSize = isHovering ? 14.0 : 13.0;
      return Padding(
        padding: const EdgeInsets.only(bottom: defaultPadding / 2),
        child: Container(
          width: sizeWidth,
          height: sizeHeight,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: undColor,
                width: undThick,
              ),
            ),
            // borderRadius: BorderRadius.circular(10),
            // color: bgColor,
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Center(
              child: Text(
                widget.sectionName,
                style: TextStyle(
                  color: textColor,
                  fontSize: fSize,
                  fontWeight: fWeight,
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
