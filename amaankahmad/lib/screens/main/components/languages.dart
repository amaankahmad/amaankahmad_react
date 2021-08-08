import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class Languages extends StatelessWidget {
  const Languages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final languages_list = [
      "English (Fluent)",
      "Portuguese (Fluent / Native)",
      "Spanish (Intermediate, Level 3)",
      "French (Beginner)"
    ];
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: (screenWidth > 450)
              ? const EdgeInsets.only(
                  top: defaultPadding / 2, bottom: defaultPadding / 2)
              : const EdgeInsets.only(
                  top: defaultPaddingSmall / 2,
                  bottom: defaultPaddingSmall / 2),
          child: Text(
            "Languages",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        for (int i = 0; i < languages_list.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding * 0.5, vertical: 4),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                " • " + languages_list[i],
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
              ),
            ),
          ),
      ],
    );
  }
}
