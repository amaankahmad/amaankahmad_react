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
      final bgColor = isHovering ? Colors.green[300] : Colors.transparent;
      final textColor = isHovering ? darkColor : Colors.grey;
      final fWeight = isHovering ? FontWeight.w900 : FontWeight.bold;
      final borderColor = isHovering ? Colors.transparent : Colors.grey;
      final sizeWidth = isHovering ? screenWidth * 0.08 : screenWidth * 0.075;
      final sizeHeight =
          isHovering ? screenHeight * 0.045 : screenHeight * 0.04;
      final fSize = isHovering ? 13.0 : 12.0;
      return Padding(
        padding: const EdgeInsets.only(bottom: 7.0),
        child: Container(
          width: sizeWidth,
          height: sizeHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor, width: 1.5),
            color: bgColor,
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Center(
              child: Text(
                widget.sectionName,
                style: TextStyle(
                    color: textColor, fontSize: fSize, fontWeight: fWeight),
              ),
            ),
          ),
        ),
      );
    });
  }
}
