import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/custom_widgets/hover_button.dart';

class ExploreButton extends StatelessWidget {
  const ExploreButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoverButton(builder: (isHovering) {
      final screenHeight = MediaQuery.of(context).size.height;
      final screenWidth = MediaQuery.of(context).size.width;
      final bgColor = isHovering ? Colors.blue : Colors.green[300];
      final textColor = isHovering ? Colors.white : darkColor;
      final fWeight = isHovering ? FontWeight.w900 : FontWeight.w900;
      final sizeHeight = screenHeight * 0.04;
      // isHovering ? screenHeight * 0.045 : screenHeight * 0.04;
      final fSize = isHovering ? 13.0 : 12.0;
      return Padding(
        padding: const EdgeInsets.only(bottom: 7.0),
        child: Container(
          width: 135,
          height: sizeHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: bgColor,
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Center(
              child: Text(
                "EXPLORE MORE",
                style: TextStyle(color: textColor, fontWeight: fWeight),
              ),
            ),
          ),
        ),
      );
    });
  }
}
