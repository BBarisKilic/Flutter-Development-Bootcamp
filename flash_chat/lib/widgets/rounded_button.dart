import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Function buttonFunction;
  final String buttonText;
  final Color buttonColor;

  RoundedButton(
      {@required this.buttonFunction,
      @required this.buttonText,
      @required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: buttonFunction,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
