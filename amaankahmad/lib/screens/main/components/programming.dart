import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/animated_programming_line.dart';

class Programming extends StatelessWidget {
  const Programming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Programming",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedProgrammingLine(percentage: 80, language: "Python"),
        AnimatedProgrammingLine(percentage: 72, language: "Dart"),
        AnimatedProgrammingLine(percentage: 60, language: "C/C++"),
        AnimatedProgrammingLine(percentage: 60, language: "HTML and CSS"),
      ],
    );
  }
}
