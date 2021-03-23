import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constans.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  RoundIconButton({@required this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: kRoundIconElevation,
      fillColor: kRoundIconFillColor,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
          height: kRoundIconSize, width: kRoundIconSize),
      child: Icon(icon),
    );
  }
}
