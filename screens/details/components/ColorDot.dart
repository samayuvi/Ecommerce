import 'package:flutter/material.dart';
import 'package:ecommerc/constants.dart';
import 'package:ecommerc/models/Product.dart';

class ColorDot extends StatelessWidget {
  Color color;
  bool isSelected;
  ColorDot({this.color, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2.5),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: isSelected ? color : Colors.transparent)),
        child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ));
  }
}
