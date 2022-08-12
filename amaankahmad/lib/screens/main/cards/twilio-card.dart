import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup.dart';

class TwilioPopUpCard extends StatelessWidget {
  const TwilioPopUpCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopUpCard(
      tag: "twilio",
      imagePath: "images/twilio/twilio-logo.png",
      imagePathExt: "images/twilio/twilio-microvisor.png",
      experienceTitle: "Twilio",
      experienceSubtitle: "IoT Device builder platform: Microvisor",
      experienceRole: "Software Engineer Intern",
      experienceRoleExt: "Backend Software Engineer Intern",
      experienceDates: "Jun. 2022 - Sep. 2022",
      link: "https://www.twilio.com/blog/introducing-microvisor",
      description: [
        "Integrating a new Continuous Integration (CI) tool into the Microvisor (an IoT device builder platform) development pipeline to tackle the biggest bottleneck of embedded software development - the dependency on underlying hardware.",
        "Building a functionally accurate model of the Microvisor chip that runs in the cloud, using Arm Virtual Hardware (AVH), that abstracts the complexity from the underlying hardware and allows for stimulating device behaviour based on the software.",
        "Creating Github Actions and Jenkins workflows to trigger upon new code changes to create an AWS EC2 instance and run custom regression tests using the AVH Amazon Machine Image (AMI) on a custom Microvisor virtual hardware target.",
        "Presented the project and its future capabilities on the team’s development pipeline to the Twilio IoT & Wireless department.",
        "Collaborating with Solutions Engineers, Product Managers and Account Executives to better understand customer needs through sitting in on Product strategy calls, customer Sales discovery calls and company Sales Enablement training.",
      ],
    );
  }
}
