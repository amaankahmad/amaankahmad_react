import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(
          left: defaultPadding * 4,
          right: defaultPadding * 4,
          top: defaultPadding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "My Projects:",
              style: TextStyle(color: Colors.greenAccent, fontSize: 48),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.05,
          ),
          (screenWidth > 700)
              ? Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        PopUpCard(
                          tag: "pathfinder",
                          imagePath: "assets/images/pathfinder/react.png",
                          imagePathExt: "assets/images/pathfinder/stock.jpeg",
                          experienceTitle: "PathFinder",
                          experienceSubtitle: "-1",
                          experienceRole: "Project and Software Lead",
                          experienceRoleExt:
                              "Co-Founder, Project and Software Lead",
                          experienceDates: "Mar. 2021 - Present",
                          description: [
                            "Leading the development of a web-app, using React that aims to increase the accessibility of educational resources by collating relevant information and structuring this into a pathway that pushes students to reach their potential.",
                            "Organising the external events and deadlines for super curricular activity applications that are nearby on a calendar.",
                            "Building of personalised and structured roadmaps for students to get closer to achieving their future goals.",
                          ],
                        ),
                        PopUpCard(
                          tag: "kalliston",
                          imagePath: "assets/images/kalliston/logo.jpeg",
                          imagePathExt: "assets/images/kalliston/app.png",
                          experienceTitle: "KALLISTON",
                          experienceSubtitle: "-1",
                          experienceRole: "Founder and Project Lead",
                          experienceRoleExt:
                              "Founder, Project and Software Lead",
                          experienceDates: "Jan. 2021 - Present",
                          description: [
                            "Developing a cross-platform app using Flutter that allows users to track their workout progress and share with friends.",
                            "Building an AI to suggest workout structure using a variety of exercises based on the users’ goals and progress history.",
                            "Providing analytics based on data collected on the individual’s progress, connected via Firebase.",
                            "Pitched at a Business Launchpad event to win funding that helps accelerate the release of this project on a larger scale.",
                            "Developing my project management skills as I lead a team of 5, to develop this project further and release to the public.",
                          ],
                        ),
                        PopUpCard(
                          tag: "bankingGUI",
                          imagePath: "assets/images/bankingGUI/login.png",
                          imagePathExt:
                              "assets/images/bankingGUI/functions.png",
                          experienceTitle: "Banking App",
                          experienceSubtitle: "-1",
                          experienceRole: "Personal Project",
                          experienceRoleExt: "Personal Project",
                          experienceDates: "Aug. 2020 - Sep. 2020",
                          description: [
                            "Developed and designed a custom graphical user interface (GUI) using Tkinter.",
                            "Gained a deeper understanding of the integrity of the banking environment through constant use of validations, ensuring the safety of account information in performing tasks such as changing personal data, making deposits and withdrawals.",
                            "Developed route optimisation software that would detect and map out routes for multiple rovers to traverse across obstacles without colliding with each other.",
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
                          experienceSubtitle: "Electric Racecar Competition",
                          experienceRole: "Engineer",
                          experienceDates: "Nov. 2017 - Mar. 2019",
                          experienceRoleExt:
                              "Chassis, Gear train & Bodywork Engineer, Head of Marketing",
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        PopUpCard(
                          tag: "pathfinder",
                          imagePath: "assets/images/pathfinder/react.png",
                          imagePathExt: "assets/images/pathfinder/stock.jpeg",
                          experienceTitle: "PathFinder",
                          experienceSubtitle: "-1",
                          experienceRole: "Project and Software Lead",
                          experienceRoleExt:
                              "Co-Founder, Project and Software Lead",
                          experienceDates: "Mar. 2021 - Present",
                          description: [
                            "Leading the development of a web-app, using React that aims to increase the accessibility of educational resources by collating relevant information and structuring this into a pathway that pushes students to reach their potential.",
                            "Organising the external events and deadlines for super curricular activity applications that are nearby on a calendar.",
                            "Building of personalised and structured roadmaps for students to get closer to achieving their future goals.",
                          ],
                        ),
                        PopUpCard(
                          tag: "kalliston",
                          imagePath: "assets/images/kalliston/logo.jpeg",
                          imagePathExt: "assets/images/kalliston/app.png",
                          experienceTitle: "KALLISTON",
                          experienceSubtitle: "-1",
                          experienceRole: "Founder and Project Lead",
                          experienceRoleExt:
                              "Founder, Project and Software Lead",
                          experienceDates: "Jan. 2021 - Present",
                          description: [
                            "Developing a cross-platform app using Flutter that allows users to track their workout progress and share with friends.",
                            "Building an AI to suggest workout structure using a variety of exercises based on the users’ goals and progress history.",
                            "Providing analytics based on data collected on the individual’s progress, connected via Firebase.",
                            "Pitched at a Business Launchpad event to win funding that helps accelerate the release of this project on a larger scale.",
                            "Developing my project management skills as I lead a team of 5, to develop this project further and release to the public.",
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        PopUpCard(
                          tag: "bankingGUI",
                          imagePath: "assets/images/bankingGUI/login.png",
                          imagePathExt:
                              "assets/images/bankingGUI/functions.png",
                          experienceTitle: "Banking App",
                          experienceSubtitle: "-1",
                          experienceRole: "Personal Project",
                          experienceRoleExt: "Personal Project",
                          experienceDates: "Aug. 2020 - Sep. 2020",
                          description: [
                            "Developed and designed a custom graphical user interface (GUI) using Tkinter.",
                            "Gained a deeper understanding of the integrity of the banking environment through constant use of validations, ensuring the safety of account information in performing tasks such as changing personal data, making deposits and withdrawals.",
                            "Developed route optimisation software that would detect and map out routes for multiple rovers to traverse across obstacles without colliding with each other.",
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          experienceSubtitle: "Electric Racecar Competition",
                          experienceRole: "Engineer",
                          experienceDates: "Nov. 2017 - Mar. 2019",
                          experienceRoleExt:
                              "Chassis, Gear train & Bodywork Engineer, Head of Marketing",
                          description: [
                            "Developed an electric race car from scratch for a competition to race against other schools.",
                            "Headed the Marketing team and collaborated in the Chassis & Bodywork, Gear Train and Sponsorship teams.",
                            "Won the IET Engineering Award in F24 & F24+ 2018 Roundup.",
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
