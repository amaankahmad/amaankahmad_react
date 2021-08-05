import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/custom_widgets/custom_list_tile.dart';

class Awards extends StatelessWidget {
  const Awards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(
          left: defaultPadding * 4,
          right: defaultPadding * 4,
          top: defaultPadding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Awards and Honours:",
              style: TextStyle(color: Colors.greenAccent, fontSize: 48),
            ),
          ),
          SizedBox(
            height: defaultPadding * 2,
          ),
          CustomListTile(
            thumbnail: Image.asset("assets/images/ocado-logo.png"),
            title: 'RAEng Engineering Leader\'s Scholarship',
            subtitle:
                " • Awarded by the Royal Academy of Engineering.\n • Celebrates the UK's most outstanding Engineering undergraduates.\n • Selected as an Engineering Leaders Scholar to inspire the next generation of Engineers and undertake an accelerated personal development programme.\n • Awarded £5,000 and mentorship to act on personal development plans over a 5 year period.",
            dates: "Jun. 2021",
          ),
          CustomListTile(
            thumbnail: Image.asset("assets/images/ocado-logo.png"),
            title: 'IET Horizons Award',
            subtitle:
                " • Awarded by the Institute of Engineering and Technology.\n • Celebrates young and passionate Engineers early on in their career.\n • Awarded £3,000 to act on personal development.\n • Supported by the Chemring Group Plc.",

            // " • Awarded by the Royal Academy of Engineering.\n • Celebrates young and passionate Engineers early on in their career.\n • Awarded £3,000 to act on personal development.\n • Supported by the Chemring Group Plc.",
            dates: "Dec. 2020",
          ),
          CustomListTile(
            thumbnail: Image.asset("assets/images/ocado-logo.png"),
            title: 'Southwark Scholarship',
            subtitle:
                " • Awarded by Southwark Council • Recipient of a full-tuition scholarship for my Engineering degree at Imperial College London\n • Awarded this competitive scholarship for my academic performance as well as my contribution to enhancing the Southwark Community.",
            dates: "Aug. 2019",
          ),
          CustomListTile(
            thumbnail: Image.asset("assets/images/ocado-logo.png"),
            title: 'St. Paul\'s School Bursary',
            subtitle:
                " • Recipient of a competitive full-tuition scholarship for my studies at St Paul’s School for Sixth Form education.",
            dates: "Aug. 2017",
          ),
        ],
      ),
    );
  }
}
