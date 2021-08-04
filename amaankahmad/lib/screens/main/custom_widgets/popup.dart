import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/custom_widgets/hero_dialogue_route.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup_card_detail.dart';
import 'package:flutter_profile/screens/main/custom_widgets/popup_card_overview.dart';

class PopUpCard extends StatelessWidget {
  final String tag;
  final String imagePath;
  final String imagePathExt;
  final String experienceTitle;
  final String experienceSubtitle;
  final String experienceRole;
  final String experienceRoleExt;
  final String experienceDates;
  final List description;

  const PopUpCard({
    Key? key,
    required this.tag,
    required this.imagePath,
    required this.imagePathExt,
    required this.experienceTitle,
    required this.experienceSubtitle,
    required this.experienceRole,
    required this.experienceRoleExt,
    required this.experienceDates,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          HeroDialogRoute(builder: (context) {
            return CardDetail(
              tag: tag,
              imagePath: imagePathExt,
              experienceTitle: experienceTitle,
              experienceSubtitle: experienceSubtitle,
              experienceRole: experienceRoleExt,
              experienceDates: experienceDates,
              description: description,
            );
          }),
        );
      },
      child: CardOverview(
        tag: tag,
        imagePath: imagePath,
        experienceTitle: experienceTitle,
        experienceSubtitle: experienceSubtitle,
        experienceRole: experienceRole,
        experienceDates: experienceDates,
      ),
    );
  }
}
