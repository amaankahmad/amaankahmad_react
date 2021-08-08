import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';

class CardOverview extends StatefulWidget {
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
  _CardOverviewState createState() => _CardOverviewState();
}

class _CardOverviewState extends State<CardOverview> {
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage(widget.imagePath), context);
    final screenWidth = (MediaQuery.of(context).size.width > 1440)
        ? 1440
        : MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Hero(
      tag: widget.tag,
      child: Container(
        width: (screenWidth > 560)
            ? ((Responsive.isDesktop(context))
                ? screenWidth * 0.2
                : screenWidth * 0.25)
            : screenWidth * 0.8,
        decoration: BoxDecoration(
            color: Color(0xFF1A1E36),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            Image.asset(
              widget.imagePath,
              height: screenHeight * 0.2,
              width: (screenWidth > 560)
                  ? ((screenWidth > 700)
                      ? screenWidth * 0.15
                      : screenWidth * 0.25)
                  : screenWidth * 0.7,
            ),
            Divider(),
            Text(
              widget.experienceTitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
            if (widget.experienceSubtitle != "-1")
              Text(
                widget.experienceSubtitle,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            Text(
              widget.experienceRole,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
            Text(
              widget.experienceDates,
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
