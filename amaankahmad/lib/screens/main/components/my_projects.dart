import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              "My Projects",
              style: TextStyle(color: Colors.green[300], fontSize: 48),
            ),
          ),
        ],
      ),
    );
  }
}
