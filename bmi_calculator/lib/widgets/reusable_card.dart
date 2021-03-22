import 'package:flutter/material.dart';

const margin = 15.0;
const borderRadius = 10.0;

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget childCard;

  ReusableCard({@required this.color, this.childCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: childCard,
    );
  }
}
