import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/components/about_me.dart';
import 'package:flutter_profile/screens/main/components/experience.dart';
import 'package:flutter_profile/screens/main/components/hobbies.dart';
import 'package:flutter_profile/screens/main/components/home_banner.dart';
import 'package:flutter_profile/screens/main/components/my_projects.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return MainScreen(
      children: [
        Container(child: HomeBanner()),
        Container(
          height: screenHeight * 0.6,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                AboutMe(),
                Experience(),
                MyProjects(),
                Hobbies(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
