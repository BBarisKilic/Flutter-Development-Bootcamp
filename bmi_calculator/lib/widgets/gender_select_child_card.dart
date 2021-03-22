import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(fontSize: 18, color: Color(0xff8D8E98));
const iconSize = 80.0;
const space = 15.0;

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
          size: iconSize,
        ),
        SizedBox(
          height: space,
        ),
        Text(
          gender,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
