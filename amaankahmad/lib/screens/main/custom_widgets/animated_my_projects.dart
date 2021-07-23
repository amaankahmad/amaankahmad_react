import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class MyProjectsAnimatedText extends StatelessWidget {
  const MyProjectsAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: AnimatedMyProjects(),
    );
  }
}

class AnimatedMyProjects extends StatelessWidget {
  const AnimatedMyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("My Projects: "),
        AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            TyperAnimatedText("an AI based Fitness mobile app",
                textStyle: TextStyle(color: Colors.greenAccent)),
            TyperAnimatedText(
                "a music physiotherapy tracking wearable-app system",
                textStyle: TextStyle(color: Colors.greenAccent)),
            TyperAnimatedText("an agricultural fintech solution for Rwanda",
                textStyle: TextStyle(color: Colors.greenAccent)),
            TyperAnimatedText(
                "an athletics posture correction wearable-app system",
                textStyle: TextStyle(color: Colors.greenAccent)),
            TyperAnimatedText("an electronic stethescope",
                textStyle: TextStyle(color: Colors.greenAccent)),
            TyperAnimatedText(
                "3 Royal Air Force engineering innovative technologies",
                textStyle: TextStyle(color: Colors.greenAccent))
          ],
        ),
      ],
    );
  }
}
