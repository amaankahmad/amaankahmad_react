import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/custom_widgets/animated_programming_line.dart';

class Programming extends StatelessWidget {
  const Programming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: (screenWidth > 450)
              ? const EdgeInsets.only(
                  top: defaultPadding / 2, bottom: defaultPadding)
              : const EdgeInsets.only(
                  top: defaultPaddingSmall / 2, bottom: defaultPaddingSmall),
          child: Text(
            "Programming",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedProgrammingLine(percentage: 85, language: "Python"),
        AnimatedProgrammingLine(percentage: 75, language: "Dart"),
        AnimatedProgrammingLine(percentage: 65, language: "C/C++"),
        AnimatedProgrammingLine(percentage: 60, language: "Java"),
        AnimatedProgrammingLine(percentage: 60, language: "HTML and CSS"),
        AnimatedProgrammingLine(percentage: 55, language: "Javascript"),
      ],
    );
  }
}
