import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constans.dart';

class GenderSelectChildCard extends StatelessWidget {
  final IconData genderIcon;
  final String gender;

  GenderSelectChildCard({@required this.genderIcon, @required this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: kIconSize,
        ),
        SizedBox(
          height: kSpace,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
