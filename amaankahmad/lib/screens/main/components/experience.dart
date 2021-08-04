import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/custom_widgets/hero_dialogue_route.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup_card_detail.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup_card_overview.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

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
              "Experience:",
              style: TextStyle(color: Colors.greenAccent, fontSize: 48),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PopUpCard(
                tag: "ocado tech",
                imagePath: "assets/images/ocado-logo.png",
                imagePathExt: "assets/images/ocado-arm.jpg",
                experienceTitle: "Ocado Technology",
                experienceSubtitle: "New Concept Development Team",
                experienceRole: "Software Intern",
                experienceRoleExt: "Software Development Engineer Intern",
                experienceDates: "Jul. 2021 - Sep. 2021",
                description: [
                  "Responsible for the development of software for the next generation of Ocado Technology’s Customer Fulfilment Centres.",
                  "Developing and designing a computer vision system (using OpenCV) that tracks items throughout the fulfilment centres using stereo cameras.",
                  "Incorporating Tensorflow to train a YOLO v5 object detector on a custom dataset.",
                  "Building a user friendly custom graphical user interface (GUI) with Tkinter for warehouse staff.",
                ],
              ),
              PopUpCard(
                tag: "e.quinox",
                imagePath: "assets/images/ocado-logo.png",
                imagePathExt: "assets/images/ocado-arm.jpg",
                experienceTitle: "E.quinox",
                experienceSubtitle: "Greenweb",
                experienceRole: "Project Lead",
                experienceRoleExt: "Software Development Engineer Intern",
                experienceDates: "Jan. 2020 - Present",
                description: [
                  "Developing a data intensive software solution to the widespread issue of small holder farming in Rwanda through the use of Machine Learning via TensorFlow to de-risk loans.",
                  "Integrating with Internet of Things (IoT) devices to gather information from the crop-fields and combining this with satellite imaging and previous climate data to predict environmental effects on agriculture to help farmers better prepare.",
                ],
              ),
              PopUpCard(
                tag: "melomotion",
                imagePath: "assets/images/ocado-logo.png",
                imagePathExt: "assets/images/ocado-arm.jpg",
                experienceTitle: "John Chilton School",
                experienceSubtitle: "Melomotion Physiotherapy App",
                experienceRole: "Project and Software Lead",
                experienceDates: "Oct. 2020 - Jun. 2021",
                experienceRoleExt:
                    "Project Lead, App Development and Machine Learning Lead",
                description: [
                  "Built a wearable-app system, using Arduino to promotes physiotherapy for children with physiological / neurological disabilities by creating music with movements.",
                  "Led the development of a cross-platform app using Flutter and Firebase, where Physiotherapists can input the exercises from the child’s rehabilitative program.",
                  "Integrated Machine Learning Vision using TensorFlow Lite to detect the position of users’ joints throughout exercise and perform analytics on exercise form, tracking users’ progress over time and relaying this information to the physiotherapist.",
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
                tag: "citadel",
                imagePath: "assets/images/ocado-logo.png",
                imagePathExt: "assets/images/ocado-arm.jpg",
                experienceTitle: "Citadel and Citdal Securities",
                experienceSubtitle: "Discover Citadel Programme",
                experienceRole: "Spring Intern",
                experienceRoleExt: "Spring Intern",
                experienceDates: "Apr. 2021",
                description: [
                  "Further explored the roles and opportunities of Quantitative Research, Software Engineering, and Investment and Trading at an industry leading hedge fund and market maker.",
                  "Networked with staff and other participants and heard first-hand from the CEO, Peng Zhao, about the drive and vision which makes Citadel Securities the \“tip of the spear for technology to enter the financial world\”.",
                ],
              ),
              PopUpCard(
                tag: "snooker",
                imagePath: "assets/images/ocado-logo.png",
                imagePathExt: "assets/images/ocado-arm.jpg",
                experienceTitle: "Freelancing",
                experienceSubtitle: "Billiard Telemetry",
                experienceRole: "Software Engineer Intern",
                experienceRoleExt: "Software and Robotics Engineer Intern",
                experienceDates: "Jun. 2020 - Oct. 2020",
                description: [
                  "Responsible for the development of prototypes, through use of Raspberry Pis,from early on in the discovery phase up until its minimum viable product (MVP).",
                  "Incorporated TensorFlow and OpenComputerVision(OpenCV) to develop object detection and distance tracking software through Machine Learning algorithms.",
                  "Developed route optimisation software that would detect and map out routes for multiple rovers to traverse across obstacles without colliding with each other.",
                ],
              ),
              PopUpCard(
                tag: "5G",
                imagePath: "assets/images/ocado-logo.png",
                imagePathExt: "assets/images/ocado-arm.jpg",
                experienceTitle: "King’s College London",
                experienceSubtitle: "5G Robotic Surgery",
                experienceRole: "Technology Intern",
                experienceDates: "Apr. 2018 - Sep. 2018",
                experienceRoleExt: "Technology Intern",
                description: [
                  "Collaborated with a team of 3 alongside Professor Mischa Dohler on developing a proof of concept for Robotic Surgery (using Haptic Arm devices) via 5G wireless communications.",
                  "Optimised the reduction noise of the signals being received by 17% in order to obtain a smoother movement pattern.",
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
