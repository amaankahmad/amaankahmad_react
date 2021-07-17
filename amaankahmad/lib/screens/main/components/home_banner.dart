import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/custom_widgets/animated_my_projects.dart';
import 'package:flutter_profile/screens/main/components/links.dart';
import 'package:flutter_profile/screens/main/custom_widgets/nav_button.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  _HomeBannerState createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/Imperial.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: defaultPadding / 2,
              left: defaultPadding,
              right: defaultPadding / 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amaan Ahmad",
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                    ),
                    MyProjectsAnimatedText(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "EXPLORE MORE",
                        style: TextStyle(
                            color: darkColor, fontWeight: FontWeight.bold),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding * 2,
                            vertical: defaultPadding),
                        backgroundColor: Colors.green[300],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Links(),
                    NavButton(sectionName: "About Me"),
                    NavButton(sectionName: "My Projects"),
                    NavButton(sectionName: "Hobbies"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
