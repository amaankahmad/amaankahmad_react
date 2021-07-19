import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  final String introduction =
      "A little short introduction; I'm Amaan Ahmad, and this is my personal website, regarding who I am, all my projects, aspirations and hobbies. Currently, I am a 3rd year studying Computational Medical Engineering (MEng) at Imperial College London, looking to pursue Software Engineering and Data Science in the future!\n\nHaving developed a strong foundation in Maths, Physics and Computing, I am determined to develop my skills in the Software Engineering field through new projects and opportunities. This interest has taken up the form of Web and App development as well as through Machine Learning Vision projects in my free time. For more, please see the \"My Projects\" section below.\n\nCurrently, I am looking to develop my knowledge in neighbouring disciplines whilst making relevant contacts! If you would like to connect - please reach out via the links above or the contact form below!";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(screenHeight * 0.04),
            child: Image.asset(
              "assets/images/me.jpg",
              width: screenHeight * 0.4,
            ),
          ), // Photo of me
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Welcome!",
                  style: TextStyle(color: Colors.green[300], fontSize: 48),
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
        ],
      ),
    );
  }
}
