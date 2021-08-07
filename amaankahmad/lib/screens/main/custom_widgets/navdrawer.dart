import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      child: Column(
        children: [
          TextButton(
            child: Text("Experience"),
            onPressed: () {},
          ),
          TextButton(
            child: Text("Projects"),
            onPressed: () {},
          ),
          TextButton(
            child: Text("Independent"),
            onPressed: () {},
          ),
          TextButton(
            child: Text("Awards"),
            onPressed: () {},
          ),
        ],
      ),
    ));
  }
}
