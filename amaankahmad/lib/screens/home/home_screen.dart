import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/components/about_me.dart';
import 'package:flutter_profile/screens/main/components/awards.dart';
import 'package:flutter_profile/screens/main/components/contact.dart';
import 'package:flutter_profile/screens/main/components/experience.dart';
import 'package:flutter_profile/screens/main/components/hobbies.dart';
import 'package:flutter_profile/screens/main/components/home_banner.dart';
import 'package:flutter_profile/screens/main/components/independant_learning.dart';
import 'package:flutter_profile/screens/main/components/my_projects.dart';
import 'package:flutter_profile/screens/main/components/navbar.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return MainScreen(
      children: [
        Container(
          child: Stack(
            children: [
              Container(
                height: screenHeight,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      HomeBanner(),
                      AboutMe(),
                      Experience(),
                      MyProjects(),
                      IndependantLearning(),
                      Hobbies(),
                      Awards(),
                      Contact(),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                    ],
                  ),
                ),
              ),
              NavBar(),
            ],
          ),
        ),
      ],
    );
  }
}
