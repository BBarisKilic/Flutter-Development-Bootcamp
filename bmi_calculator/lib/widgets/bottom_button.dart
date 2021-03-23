import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constans.dart';

class BottomButton extends StatelessWidget {
  final Function navigationFunc;
  final String title;
  BottomButton({@required this.navigationFunc, @required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigationFunc,
      child: Container(
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: kBottomButtonBottomPadding),
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            style: kBottomContainerTextStyle,
          ),
        ),
      ),
    );
  }
}
