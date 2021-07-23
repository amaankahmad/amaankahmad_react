import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding * 4, vertical: defaultPadding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Experience:",
              style: TextStyle(color: Colors.greenAccent, fontSize: 48),
            ),
          ),
        ],
      ),
    );
  }
}
