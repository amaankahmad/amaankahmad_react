import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/main/cards/kalliston-card.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: (screenWidth > 450)
          ? const EdgeInsets.only(
              left: defaultPadding * 4,
              right: defaultPadding * 4,
              top: defaultPadding * 2)
          : const EdgeInsets.only(
              left: defaultPaddingSmall * 4,
              right: defaultPaddingSmall * 4,
              top: defaultPaddingSmall * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "My Projects:",
              style: (screenWidth > 560)
                  ? TextStyle(color: Colors.greenAccent, fontSize: 48)
                  : TextStyle(color: Colors.greenAccent, fontSize: 36),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.05,
          ),
          (screenWidth > 560)
              ? ((Responsive.isDesktop(context))
                  ? Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            PopUpCard(
                              tag: "pathfinder",
                              imagePath: "assets/images/pathfinder/logo.png",
                              imagePathExt:
                                  "assets/images/pathfinder/banner.png",
                              experienceTitle: "PathFinder",
                              experienceSubtitle: "-1",
                              experienceRole: "Project and Software Lead",
                              experienceRoleExt:
                                  "Co-Founder, Project and Software Lead",
                              experienceDates: "Mar. 2021 - Present",
                              link: "",
                              description: [
                                "Leading the development of a web-app, using React that aims to increase the accessibility of educational resources by collating relevant information and structuring this into a pathway that pushes students to reach their potential.",
                                "Organising the external events and deadlines for super curricular activity applications that are nearby on a calendar.",
                                "Building of personalised and structured roadmaps for students to get closer to achieving their future goals.",
                              ],
                            ),
                            KALLISTONPopUpCard(),
                            PopUpCard(
                              tag: "melomotion",
                              imagePath: "assets/images/melomotion/logo.png",
                              imagePathExt: "assets/images/melomotion/app.png",
                              experienceTitle: "John Chilton School",
                              experienceSubtitle:
                                  "Melomotion Physiotherapy App",
                              experienceRole: "Project and Software Lead",
                              experienceDates: "Oct. 2020 - Jun. 2021",
                              experienceRoleExt:
                                  "Project Lead, App Development and Machine Learning Lead",
                              link: "https://youtu.be/yGAANo65Fyo",
                              description: [
                                "Built a wearable-app system, using Arduino, to promote physiotherapy for children with physiological / neurological disabilities by allowing them to create music whilst performing the movements in their rehabilitation programme, developed by their Physiotherapist.",
                                "Led the development of a cross-platform app using Flutter and Firebase, where Physiotherapists can input the exercises into the child’s rehabilitative program.",
                                "Integrated Machine Learning Vision using TensorFlow Lite to detect the position of users’ joints throughout exercise and perform analytics on exercise form, tracking users’ progress over time and relaying this information to the Physiotherapist.",
                                "Coordinated with the music team to develop an algorithm to unlock new elements of songs as reward for progressing through the exercise whilst maintaining engaging and melodic music.",
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PopUpCard(
                              tag: "ichealthhack",
                              imagePath: "assets/images/ichealthhack/logo.png",
                              imagePathExt:
                                  "assets/images/ichealthhack/wearable.JPG",
                              experienceTitle: "ICHealthHack20",
                              experienceSubtitle: "Hackathon",
                              experienceRole: "Project and Software Lead",
                              experienceRoleExt: "Project and Software Lead",
                              experienceDates: "Mar. 2020",
                              link: "",
                              description: [
                                "Led a team of a prototype vest, using Arduino, that monitored the posture of athletes during training.",
                                "Development of a software that tracks cardiovascular health and recurring postural issues, relaying feedback to user through haptic sensors built into the vest and our via our app built using Java and Android Studio.",
                              ],
                            ),
                            PopUpCard(
                              tag: "raf",
                              imagePath: "assets/images/raf/logo.jpeg",
                              imagePathExt: "assets/images/raf/Chief.jpg",
                              experienceTitle: "RAF Aerospace Competition",
                              experienceSubtitle: "Engineering Competition",
                              experienceRole: "Project Lead",
                              experienceDates: "Jan. 2018 - Sep. 2018",
                              experienceRoleExt: "Project Lead",
                              link:
                                  "https://schools-aerospace-challenge.com/wp-content/uploads/2018/12/12.-Team-CAN.pdf",
                              description: [
                                "Led as Team Captain for Finalist Team for the RAF Aerospace Challenge where we designed 3 technological adaptations to the RAF’s Merlin HC3 helicopter, aiming to solve issues that cause a huge amount of pilot accidents.",
                                "Incorporation of thermoelectric theory to generate energy from the helicopter’s environment to power sensors and a drone to scan ahead of the vehicle during hot, sandy conditions, providing information on the safest route to take.",
                                "Redesigned the propeller system to use ducts for more efficient lift generation with 26% reduced noise pollution.",
                              ],
                            ),
                            PopUpCard(
                              tag: "f24",
                              imagePath: "assets/images/f24/logo.png",
                              imagePathExt: "assets/images/f24/car.jpg",
                              experienceTitle: "Greenpower F24+",
                              experienceSubtitle:
                                  "Electric Racecar Competition",
                              experienceRole: "Engineer",
                              experienceDates: "Nov. 2017 - Mar. 2019",
                              experienceRoleExt:
                                  "Chassis, Gear train & Bodywork Engineer, Head of Marketing",
                              link:
                                  "https://www.greenpower.co.uk/news/2018-f24-f24-season-roundup",
                              description: [
                                "Developed an electric race car from scratch for a competition to race against other schools.",
                                "Headed the Marketing team and collaborated in the Chassis & Bodywork, Gear Train and Sponsorship teams.",
                                "Won the IET Engineering Award in F24 & F24+ 2018 Roundup.",
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            PopUpCard(
                              tag: "pathfinder",
                             imagePath: "assets/images/pathfinder/logo.png",
                              imagePathExt:
                                  "assets/images/pathfinder/banner.png",
                              experienceTitle: "PathFinder",
                              experienceSubtitle: "-1",
                              experienceRole: "Project and Software Lead",
                              experienceRoleExt:
                                  "Co-Founder, Project and Software Lead",
                              experienceDates: "Mar. 2021 - Present",
                              link: "",
                              description: [
                                "Leading the development of a web-app, using React that aims to increase the accessibility of educational resources by collating relevant information and structuring this into a pathway that pushes students to reach their potential.",
                                "Organising the external events and deadlines for super curricular activity applications that are nearby on a calendar.",
                                "Building of personalised and structured roadmaps for students to get closer to achieving their future goals.",
                              ],
                            ),
                            KALLISTONPopUpCard(),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            PopUpCard(
                              tag: "melomotion",
                              imagePath: "assets/images/melomotion/logo.png",
                              imagePathExt: "assets/images/melomotion/app.png",
                              experienceTitle: "John Chilton School",
                              experienceSubtitle:
                                  "Melomotion Physiotherapy App",
                              experienceRole: "Project and Software Lead",
                              experienceDates: "Oct. 2020 - Jun. 2021",
                              experienceRoleExt:
                                  "Project Lead, App Development and Machine Learning Lead",
                              link: "https://youtu.be/yGAANo65Fyo",
                              description: [
                                "Built a wearable-app system, using Arduino, to promote physiotherapy for children with physiological / neurological disabilities by allowing them to create music whilst performing the movements in their rehabilitation programme, developed by their Physiotherapist.",
                                "Led the development of a cross-platform app using Flutter and Firebase, where Physiotherapists can input the exercises into the child’s rehabilitative program.",
                                "Integrated Machine Learning Vision using TensorFlow Lite to detect the position of users’ joints throughout exercise and perform analytics on exercise form, tracking users’ progress over time and relaying this information to the Physiotherapist.",
                                "Coordinated with the music team to develop an algorithm to unlock new elements of songs as reward for progressing through the exercise whilst maintaining engaging and melodic music.",
                              ],
                            ),
                            PopUpCard(
                              tag: "ichealthhack",
                              imagePath: "assets/images/ichealthhack/logo.png",
                              imagePathExt:
                                  "assets/images/ichealthhack/wearable.JPG",
                              experienceTitle: "ICHealthHack20",
                              experienceSubtitle: "Hackathon",
                              experienceRole: "Project and Software Lead",
                              experienceRoleExt: "Project and Software Lead",
                              experienceDates: "Mar. 2020",
                              link: "",
                              description: [
                                "Led a team of a prototype vest, using Arduino, that monitored the posture of athletes during training.",
                                "Development of a software that tracks cardiovascular health and recurring postural issues, relaying feedback to user through haptic sensors built into the vest and our via our app built using Java and Android Studio.",
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            PopUpCard(
                              tag: "raf",
                              imagePath: "assets/images/raf/logo.jpeg",
                              imagePathExt: "assets/images/raf/Chief.jpg",
                              experienceTitle: "RAF Aerospace Competition",
                              experienceSubtitle: "Engineering Competition",
                              experienceRole: "Project Lead",
                              experienceDates: "Jan. 2018 - Sep. 2018",
                              experienceRoleExt: "Project Lead",
                              link:
                                  "https://schools-aerospace-challenge.com/wp-content/uploads/2018/12/12.-Team-CAN.pdf",
                              description: [
                                "Led as Team Captain for Finalist Team for the RAF Aerospace Challenge where we designed 3 technological adaptations to the RAF’s Merlin HC3 helicopter, aiming to solve issues that cause a huge amount of pilot accidents.",
                                "Incorporation of thermoelectric theory to generate energy from the helicopter’s environment to power sensors and a drone to scan ahead of the vehicle during hot, sandy conditions, providing information on the safest route to take.",
                                "Redesigned the propeller system to use ducts for more efficient lift generation with 26% reduced noise pollution.",
                              ],
                            ),
                            PopUpCard(
                              tag: "f24",
                              imagePath: "assets/images/f24/logo.png",
                              imagePathExt: "assets/images/f24/car.jpg",
                              experienceTitle: "Greenpower F24+",
                              experienceSubtitle:
                                  "Electric Racecar Competition",
                              experienceRole: "Engineer",
                              experienceDates: "Nov. 2017 - Mar. 2019",
                              experienceRoleExt:
                                  "Chassis, Gear train & Bodywork Engineer, Head of Marketing",
                              link:
                                  "https://www.greenpower.co.uk/news/2018-f24-f24-season-roundup",
                              description: [
                                "Developed an electric race car from scratch for a competition to race against other schools.",
                                "Headed the Marketing team and collaborated in the Chassis & Bodywork, Gear Train and Sponsorship teams.",
                                "Won the IET Engineering Award in F24 & F24+ 2018 Roundup.",
                              ],
                            ),
                          ],
                        ),
                      ],
                    ))
              : Center(
                  child: Column(
                  children: [
                    PopUpCard(
                      tag: "pathfinder",
                      imagePath: "assets/images/pathfinder/logo.png",
                      imagePathExt: "assets/images/pathfinder/banner.png",
                      experienceTitle: "PathFinder",
                      experienceSubtitle: "-1",
                      experienceRole: "Project and Software Lead",
                      experienceRoleExt:
                          "Co-Founder, Project and Software Lead",
                      experienceDates: "Mar. 2021 - Present",
                      link: "",
                      description: [
                        "Leading the development of a web-app, using React that aims to increase the accessibility of educational resources by collating relevant information and structuring this into a pathway that pushes students to reach their potential.",
                        "Organising the external events and deadlines for super curricular activity applications that are nearby on a calendar.",
                        "Building of personalised and structured roadmaps for students to get closer to achieving their future goals.",
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    KALLISTONPopUpCard(),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    PopUpCard(
                      tag: "melomotion",
                      imagePath: "assets/images/melomotion/logo.png",
                      imagePathExt: "assets/images/melomotion/app.png",
                      experienceTitle: "John Chilton School",
                      experienceSubtitle:
                          "Melomotion Physiotherapy App",
                      experienceRole: "Project and Software Lead",
                      experienceDates: "Oct. 2020 - Jun. 2021",
                      experienceRoleExt:
                          "Project Lead, App Development and Machine Learning Lead",
                      link: "https://youtu.be/yGAANo65Fyo",
                      description: [
                        "Built a wearable-app system, using Arduino, to promote physiotherapy for children with physiological / neurological disabilities by allowing them to create music whilst performing the movements in their rehabilitation programme, developed by their Physiotherapist.",
                        "Led the development of a cross-platform app using Flutter and Firebase, where Physiotherapists can input the exercises into the child’s rehabilitative program.",
                        "Integrated Machine Learning Vision using TensorFlow Lite to detect the position of users’ joints throughout exercise and perform analytics on exercise form, tracking users’ progress over time and relaying this information to the Physiotherapist.",
                        "Coordinated with the music team to develop an algorithm to unlock new elements of songs as reward for progressing through the exercise whilst maintaining engaging and melodic music.",
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    PopUpCard(
                      tag: "ichealthhack",
                      imagePath: "assets/images/ichealthhack/logo.png",
                      imagePathExt: "assets/images/ichealthhack/wearable.JPG",
                      experienceTitle: "ICHealthHack20",
                      experienceSubtitle: "Hackathon",
                      experienceRole: "Project and Software Lead",
                      experienceRoleExt: "Project and Software Lead",
                      experienceDates: "Mar. 2020",
                      link: "",
                      description: [
                        "Led a team of a prototype vest, using Arduino, that monitored the posture of athletes during training.",
                        "Development of a software that tracks cardiovascular health and recurring postural issues, relaying feedback to user through haptic sensors built into the vest and our via our app built using Java and Android Studio.",
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    PopUpCard(
                      tag: "raf",
                      imagePath: "assets/images/raf/logo.jpeg",
                      imagePathExt: "assets/images/raf/Chief.jpg",
                      experienceTitle: "RAF Aerospace Competition",
                      experienceSubtitle: "Engineering Competition",
                      experienceRole: "Project Lead",
                      experienceDates: "Jan. 2018 - Sep. 2018",
                      experienceRoleExt: "Project Lead",
                      link:
                          "https://schools-aerospace-challenge.com/wp-content/uploads/2018/12/12.-Team-CAN.pdf",
                      description: [
                        "Led as Team Captain for Finalist Team for the RAF Aerospace Challenge where we designed 3 technological adaptations to the RAF’s Merlin HC3 helicopter, aiming to solve issues that cause a huge amount of pilot accidents.",
                        "Incorporation of thermoelectric theory to generate energy from the helicopter’s environment to power sensors and a drone to scan ahead of the vehicle during hot, sandy conditions, providing information on the safest route to take.",
                        "Redesigned the propeller system to use ducts for more efficient lift generation with 26% reduced noise pollution.",
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    PopUpCard(
                      tag: "f24",
                      imagePath: "assets/images/f24/logo.png",
                      imagePathExt: "assets/images/f24/car.jpg",
                      experienceTitle: "Greenpower F24+",
                      experienceSubtitle: "Electric Racecar Competition",
                      experienceRole: "Engineer",
                      experienceDates: "Nov. 2017 - Mar. 2019",
                      experienceRoleExt:
                          "Chassis, Gear train & Bodywork Engineer, Head of Marketing",
                      link:
                          "https://www.greenpower.co.uk/news/2018-f24-f24-season-roundup",
                      description: [
                        "Developed an electric race car from scratch for a competition to race against other schools.",
                        "Headed the Marketing team and collaborated in the Chassis & Bodywork, Gear Train and Sponsorship teams.",
                        "Won the IET Engineering Award in F24 & F24+ 2018 Roundup.",
                      ],
                    ),
                  ],
                )),
        ],
      ),
    );
  }
}
