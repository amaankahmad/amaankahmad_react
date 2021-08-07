import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/main/components/about_me.dart';
import 'package:flutter_profile/screens/main/components/awards.dart';
import 'package:flutter_profile/screens/main/components/contact.dart';
import 'package:flutter_profile/screens/main/components/experience.dart';
import 'package:flutter_profile/screens/main/components/hobbies.dart';
import 'package:flutter_profile/screens/main/components/home_banner.dart';
import 'package:flutter_profile/screens/main/components/independant_learning.dart';
import 'package:flutter_profile/screens/main/components/my_projects.dart';
import 'package:flutter_profile/screens/main/components/navbar.dart';
import 'package:flutter_profile/screens/main/components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final aboutMeKey = GlobalKey();
    final experienceKey = GlobalKey();
    final projectsKey = GlobalKey();
    final learningKey = GlobalKey();
    final hobbiesKey = GlobalKey();
    final awardsKey = GlobalKey();

    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              title: Text(
                "Amaan Ahmad",
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
              leading: Builder(
                builder: (context) => IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    }),
              ),
              backgroundColor: Color(0xFF1A1E36),
            ),
      // drawer: NavDrawer(),
      drawer: Drawer(
        child: SideMenu(),
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              Expanded(
                flex: 7,
                child: Column(
                  children: [
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            height: Responsive.isDesktop(context)
                                ? screenHeight
                                : screenHeight - 56,
                            child: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  HomeBanner(
                                    buttonPressed: () =>
                                        Scrollable.ensureVisible(
                                            projectsKey.currentContext!,
                                            alignment: 0.25,
                                            duration: Duration(seconds: 1)),
                                  ),
                                  AboutMe(
                                    key: aboutMeKey,
                                  ),
                                  Experience(
                                    key: experienceKey,
                                  ),
                                  MyProjects(
                                    key: projectsKey,
                                  ),
                                  IndependantLearning(
                                    key: learningKey,
                                  ),
                                  Hobbies(
                                    key: hobbiesKey,
                                  ),
                                  Awards(
                                    key: awardsKey,
                                  ),
                                  Contact(),
                                  SizedBox(
                                    height: screenHeight * 0.05,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          NavBar(
                              aboutMe: () => Scrollable.ensureVisible(
                                  aboutMeKey.currentContext!,
                                  alignment: 0.25,
                                  duration: Duration(seconds: 1)),
                              experience: () => Scrollable.ensureVisible(
                                  experienceKey.currentContext!,
                                  alignment: 0.25,
                                  duration: Duration(seconds: 1)),
                              awards: () => Scrollable.ensureVisible(
                                  awardsKey.currentContext!,
                                  alignment: 0.25,
                                  duration: Duration(seconds: 1)))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
