import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/custom_widgets/custom_list_tile.dart';

class IndependantLearning extends StatelessWidget {
  const IndependantLearning({Key? key}) : super(key: key);

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
              "Independant Learning:",
              style: TextStyle(color: Colors.greenAccent, fontSize: 48),
            ),
          ),
          SizedBox(
            height: defaultPadding * 2,
          ),
          CustomListTile(
            thumbnail: Image.asset("assets/images/ocado-logo.png"),
            title: 'Google Developers Machine Learning',
            subtitle:
                "Explored Machine Learning training further, looking at the differences between static and dynamic interfaces as well as training Neural Networks.",
            dates: "Jul. 2021 - Aug. 2021",
          ),
          CustomListTile(
            thumbnail: Image.asset("assets/images/ocado-logo.png"),
            title: 'Securities Education Certificate (Distinction)',
            subtitle:
                "Course led by the Imperial Investment Society where I gained insights on the mechanics of all asset classes paired with a real world understanding of their applications. This stemmed from Macroeconomics and Securities and developed to exploring Derivatives pricing models and the Greeks.",
            dates: "Jan. 2021 - Mar. 2021",
          ),
          CustomListTile(
            thumbnail: Image.asset("assets/images/ocado-logo.png"),
            title:
                'HarvardX Introduction to Artificial Intelligence with Python',
            subtitle:
                "Explored the different branches within Artificial Intelligence, developing a better understanding of automation and optimisation through hands on projects.",
            dates: "Jul. 2020 - Nov. 2020",
          ),
          CustomListTile(
            thumbnail: Image.asset("assets/images/ocado-logo.png"),
            title: 'Wharton-Online Fintech',
            subtitle:
                "Explored the application of Financial Technology specialisation. This allowed me to develop my skills and knowledge in Investment management (through Modern Portfolio Theory), Blockchain, Regulation and Cryptocurrencies.",
            dates: "Aug. 2020 - Sep. 2020",
          ),
          CustomListTile(
              thumbnail: Image.asset("assets/images/ocado-logo.png"),
              title:
                  'Goldman Sachs – Engineering Virtual Experience Participant',
              subtitle:
                  "Gained a better understanding of how Blockchain works through working on cryptography using hash functions to crack a leaked password database.",
              dates: "Sep. 2020"),
          CustomListTile(
            thumbnail: Image.asset("assets/images/ocado-logo.png"),
            title: 'JPMorgan Chase – Software Engineering Virtual Experience',
            subtitle:
                "Explored the process of stock trades, gaining a deeper appreciation through developing the visualisation of stock price data feeds using Python and React.",
            dates: "Aug. 2020",
          ),
          CustomListTile(
            thumbnail: Image.asset("assets/images/ocado-logo.png"),
            title:
                'MIT 6.0002 Introduction to Data Science and Computational Thinking',
            subtitle:
                "Delved deeper the use of computing in solving optimisation problems and explored Data Science through the use of both supervised (classification) and unsupervised (clustering) Machine Learning in different fields of STEM through various projects.",
            dates: "Jun. 2020 - Aug. 2020",
          ),
          CustomListTile(
            thumbnail: Image.asset("assets/images/ocado-logo.png"),
            title: 'MIT 6.0001 Introduction to Computer Science',
            subtitle:
                "Developed my knowledge in Object Oriented Programming, Data Structures and Algorithms and obtained a deeper understanding of programming efficiency.",
            dates: "Apr. 2020 - Jun. 2020",
          ),
        ],
      ),
    );
  }
}
