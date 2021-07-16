import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(
              flex: 4,
            ),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/Amaan Ahmad.jpg"),
            ),
            Spacer(
              flex: 3,
            ),
            Text(
              "Amaan Ahmad",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              "RAEng, IET and Southwark Scholar studying\nComputational Biomedical Engineering\nat Imperial College London",
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
              textAlign: TextAlign.center,
            ),
            Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
