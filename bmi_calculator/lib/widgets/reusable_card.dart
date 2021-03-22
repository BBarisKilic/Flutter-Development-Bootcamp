import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constans.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget childCard;
  final Function onPress;

  ReusableCard({@required this.color, this.childCard, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(kMargin),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
        child: childCard,
      ),
    );
  }
}
