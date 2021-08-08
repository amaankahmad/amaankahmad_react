import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/languages.dart';
import 'package:flutter_profile/screens/main/components/links.dart';
import 'package:flutter_profile/screens/main/components/my_info.dart';
import 'package:flutter_profile/screens/main/components/programming.dart';
import 'package:flutter_profile/screens/main/components/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: (screenHeight > 560) ? ((screenHeight > 800) ? 5 : 8) : 12,
            child: MyInfo(),
          ),
          Expanded(
            flex: (screenHeight > 450) ? 12 : 3,
            child: SingleChildScrollView(
              padding: (screenWidth > 450)
                  ? EdgeInsets.all(defaultPadding)
                  : EdgeInsets.all(defaultPaddingSmall),
              child: Column(
                children: [
                  Skills(),
                  Programming(),
                  Languages(),
                  Links(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
