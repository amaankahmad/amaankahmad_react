import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/custom_widgets/animated_skills_circle.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Divider(),
        Padding(
          padding: (screenWidth > 450)
              ? const EdgeInsets.only(bottom: defaultPadding)
              : const EdgeInsets.only(bottom: defaultPadding),
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
              width:
                  ((screenWidth > 450) ? defaultPadding : defaultPaddingSmall) *
                      0.75,
            ),
            Expanded(
              child: AnimatedSkillsCircle(
                skillName: "OpenCV",
              ),
            ),
            SizedBox(
              width:
                  ((screenWidth > 450) ? defaultPadding : defaultPaddingSmall) *
                      0.75,
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
              width:
                  ((screenWidth > 450) ? defaultPadding : defaultPaddingSmall) *
                      0.75,
            ),
            Expanded(
              child: AnimatedSkillsCircle(
                skillName: "Firebase",
              ),
            ),
            SizedBox(
              width:
                  ((screenWidth > 450) ? defaultPadding : defaultPaddingSmall) *
                      0.75,
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
