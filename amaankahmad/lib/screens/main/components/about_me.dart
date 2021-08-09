import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({required Key key}) : super(key: key);

  final String introduction =
      "A little short introduction - my name is Amaan Ahmad and this is my personal website. It tells you about who I am, my projects and aspirations. I am a self-taught programmer and currently a 3rd year of studying Computational Medical Engineering (MEng) at Imperial College London and I am looking to pursue Software Engineering and Data Science in the future!\n\nHaving developed a strong foundation in Maths, Physics and Computing, I have been exploring my interest in software through Web and App development as well as Machine Learning Vision through projects in my free time. For more, please see the \"Experience\" or \"My Projects\" sections below.\n\nCurrently, I am looking to develop my knowledge in associated disciplines, whilst making relevant contacts. If you would like to connect - please reach out via the contact links above!";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      child: (screenWidth > 1000)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: (screenWidth > 450)
                        ? const EdgeInsets.only(top: defaultPadding * 2)
                        : const EdgeInsets.only(top: defaultPaddingSmall * 2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(screenHeight * 0.04),
                      child: Image.asset("assets/images/me/me.jpg",
                          width: screenHeight * 0.4),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: (screenWidth > 450)
                        ? const EdgeInsets.only(top: defaultPadding * 1.5)
                        : const EdgeInsets.only(top: defaultPaddingSmall * 1.5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Welcome!",
                            style: TextStyle(
                                color: Colors.greenAccent, fontSize: 48),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.015,
                        ),
                        Container(
                          width: screenWidth * 0.3,
                          child: Text(
                            introduction,
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                Container(
                  child: Text(
                    "Welcome!",
                    style: TextStyle(color: Colors.greenAccent, fontSize: 48),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.015,
                ),
                Container(
                  width: screenWidth * 0.8,
                  child: Text(
                    introduction,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: (screenWidth > 450)
                      ? const EdgeInsets.only(top: defaultPadding * 2)
                      : const EdgeInsets.only(top: defaultPaddingSmall * 2),
                  child: Image.asset("assets/images/me/me.jpg",
                      width: screenWidth * 0.8),
                ),
              ],
            ),
    );
  }
}
