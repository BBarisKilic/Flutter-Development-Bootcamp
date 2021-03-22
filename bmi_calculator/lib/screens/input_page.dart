import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/widgets/gender_select_child_card.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:bmi_calculator/constants/constans.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.male;
  int height = 180;
  int weight = 60;
  int age = 16;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kTitle),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    color: gender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    childCard: GenderSelectChildCard(
                        genderIcon: FontAwesomeIcons.mars, gender: kMale),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      gender = Gender.female;
                    });
                  },
                  color: gender == Gender.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  childCard: GenderSelectChildCard(
                      genderIcon: FontAwesomeIcons.venus, gender: kFemale),
                )),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    kHeight,
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        kCm,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  color: kActiveCardColor,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        kWeight,
                        style: kLabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberTextStyle,
                      ),
                      SizedBox(
                        height: kSpace,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: kSpace,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  color: kActiveCardColor,
                  childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        kAge,
                        style: kLabelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberTextStyle,
                      ),
                      SizedBox(
                        height: kSpace,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: kSpace,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            height: kBottomContainerHeight,
            width: double.infinity,
            child: Center(
              child: Text(kBottomContainerText),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  RoundIconButton({@required this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 0.0,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      child: Icon(icon),
    );
  }
}
