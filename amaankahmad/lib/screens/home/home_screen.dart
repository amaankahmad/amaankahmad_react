import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/components/about_me.dart';
import 'package:flutter_profile/screens/main/components/hobbies.dart';
import 'package:flutter_profile/screens/main/components/home_banner.dart';
import 'package:flutter_profile/screens/main/components/my_projects.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        SingleChildScrollView(
          child: Column(
            children: [
              AboutMe(),
              MyProjects(),
              Hobbies(),
            ],
          ),
        )
      ],
    );
  }
}
