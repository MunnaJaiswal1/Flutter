import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "BMI calculator",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white60,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              ReusableCard(
                onPress: () {
                  updateSelectedGender(Gender.male);
                },
                colour: getCardColor(Gender.male),
                cardChild: IconContent(
                  icon: FontAwesomeIcons.mars,
                  label: "MALE",
                ),
              ),
              ReusableCard(
                onPress: () {
                  updateSelectedGender(Gender.female);
                },
                colour: getCardColor(Gender.female),
                cardChild: IconContent(
                  icon: FontAwesomeIcons.venus,
                  label: "FEMALE",
                ),
              ),
            ],
          ),
          ReusableCard(
            onPress: () {},
            colour: kActiveCardColour,
            cardChild: Column(
              children: [
                Text('HEIGHT',style: kLabelTextStyle,)
              ],
            ),
          ),
          // Row(
          //   children: [
          //     ReusableCard(
          //       colour: kActiveCardColour,
          //     ),
          //     ReusableCard(
          //       colour: kActiveCardColour,
          //     ),
          //   ],
          // ),
          // Bottom area
          Container(
            color: kBottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }

  void updateSelectedGender(Gender gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  Color getCardColor(Gender gender) {
    return selectedGender == gender ? kActiveCardColour : kInactiveCardColour;
  }
}
