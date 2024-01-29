//import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
enum Gender{
  male,
  female,
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({required this.colour,required this.cardChild,required this.onPress});

  final Color colour;
  final Widget cardChild;
  // final Gender selectedGender;
  final Function onPress;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress(),
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
