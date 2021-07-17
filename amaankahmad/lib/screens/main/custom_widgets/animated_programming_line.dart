import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class AnimatedProgrammingLine extends StatelessWidget {
  const AnimatedProgrammingLine(
      {Key? key, required this.percentage, required this.language})
      : super(key: key);

  final double percentage;
  final String language;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Column(
        children: [
          TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: 0.8),
            duration: defaultDuration,
            builder: (context, double value, child) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  language,
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: defaultPadding / 2,
                ),
                LinearProgressIndicator(
                  value: percentage / 100,
                  color: Colors.green[300],
                  backgroundColor: darkColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
