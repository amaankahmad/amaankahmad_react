import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class AnimatedSkillsCircle extends StatelessWidget {
  const AnimatedSkillsCircle({
    Key? key,
    required this.skillName,
  }) : super(key: key);

  final String skillName;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: 1),
        duration: Duration(milliseconds: 2000),
        builder: (context, double value, child) => Stack(
          fit: StackFit.expand,
          children: [
            CircularProgressIndicator(
              value: value,
              color: Colors.green[300],
              backgroundColor: darkColor,
            ),
            Center(
              child: Text(
                skillName,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
