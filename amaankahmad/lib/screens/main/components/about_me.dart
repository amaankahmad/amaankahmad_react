import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({required Key key}) : super(key: key);

  final String introduction =
      "A little short introduction - my name is Amaan Ahmad and this is my personal website. It tells you about who I am, my projects and aspirations. I am a self-taught programmer and currently a Masters student in Computational Medical Engineering (MEng) at Imperial College London.\n\nAlthough coming from a technical background I have learnt that knowing how to build does not only apply to an Engineering context. This is why, in recent years, I have been focussing on better understanding the problems being faced in the world through industries I am passionate about, from Healthcare to Education, to Agriculture and to Fitness. Ultimately, my aim is to leverage technology to create a positive impact in these areas as a Humanitarian Engineer. \n\nI have learnt that in order to build solutions to people’s problems, I have to iterate and pivot based on feedback from those who need it most. As such, to compliment my foundations in Programming and Engineering, I have been learning more about Product Management, Pitching, Storytelling and Business Strategy, all in the pursuit of better positioning myself to build the future. \n\nThe main thing that is helping me develop these skills and knowledge is building things and sharing ideas with the amazing people around me! And so if anything of the above or below resonates with you, I would love for you to connect using the contact links above!";

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
                  flex: 8,
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
                  flex: 10,
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
                Expanded(
                  flex: 1,
                  child: Container(),
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
