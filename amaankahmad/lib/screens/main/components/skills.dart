import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/custom_widgets/animated_skills_circle.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Divider(),
        Padding(
          padding: const EdgeInsets.only(bottom: defaultPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedSkillsCircle(
                skillName: "Flutter",
              ),
            ),
            SizedBox(
              width: defaultPadding * 0.75,
            ),
            Expanded(
              child: AnimatedSkillsCircle(
                skillName: "OpenCV",
              ),
            ),
            SizedBox(
              width: defaultPadding * 0.75,
            ),
            Expanded(
              child: AnimatedSkillsCircle(
                skillName: "React",
              ),
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedSkillsCircle(
                skillName: "Tensorflow",
              ),
            ),
            SizedBox(
              width: defaultPadding * 0.75,
            ),
            Expanded(
              child: AnimatedSkillsCircle(
                skillName: "Firebase",
              ),
            ),
            SizedBox(
              width: defaultPadding * 0.75,
            ),
            Expanded(
              child: AnimatedSkillsCircle(
                skillName: "PyTorch",
              ),
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding * 1.5,
        ),
      ],
    );
  }
}
