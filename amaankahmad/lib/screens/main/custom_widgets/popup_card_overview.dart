import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class CardOverview extends StatelessWidget {
  final String tag;
  final String imagePath;
  final String experienceTitle;
  final String experienceSubtitle;
  final String experienceRole;
  final String experienceDates;
  const CardOverview({
    Key? key,
    required this.tag,
    required this.imagePath,
    required this.experienceTitle,
    required this.experienceSubtitle,
    required this.experienceRole,
    required this.experienceDates,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Hero(
      tag: tag,
      child: Container(
        width: screenWidth * 0.15,
        decoration: BoxDecoration(
            color: Color(0xFF1A1E36),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: screenHeight * 0.2,
              width: screenWidth * 0.3,
            ),
            Divider(),
            Text(
              experienceTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
            if (experienceSubtitle != "-1")
              Text(
                experienceSubtitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            Text(
              experienceRole,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
            Text(
              experienceDates,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: defaultPadding / 2),
              child: Text(
                "Click me to read more! >>",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.greenAccent,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
