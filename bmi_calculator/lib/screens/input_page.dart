import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/widgets/gender_select_child_card.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';

const title = 'BMI CALCULATOR';
const male = 'MALE';
const female = 'FEMALE';
const bottomContainerText = 'Calculate BMI';
const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xffBE1555);
const activeCardColor = Color(0xff1D1E33);
const passiveCardColor = Colors.black;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    childCard: GenderSelectChildCard(
                        genderIcon: FontAwesomeIcons.mars, gender: male),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  color: activeCardColor,
                  childCard: GenderSelectChildCard(
                      genderIcon: FontAwesomeIcons.venus, gender: female),
                )),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  color: activeCardColor,
                )),
                Expanded(
                    child: ReusableCard(
                  color: activeCardColor,
                )),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity,
            child: Center(
              child: Text(bottomContainerText),
            ),
          ),
        ],
      ),
    );
  }
}
