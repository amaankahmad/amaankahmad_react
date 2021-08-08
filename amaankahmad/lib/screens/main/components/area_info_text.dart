import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: (screenWidth > 450)
          ? const EdgeInsets.only(bottom: defaultPadding / 2)
          : const EdgeInsets.only(bottom: defaultPaddingSmall / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            text!,
          )
        ],
      ),
    );
  }
}
