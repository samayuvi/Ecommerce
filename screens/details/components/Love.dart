import 'package:flutter/material.dart';
import 'package:ecommerc/constants.dart';
import 'package:ecommerc/models/Product.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Love extends StatelessWidget {
  const Love({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 32,
      width: 32,
      decoration:
          BoxDecoration(color: Color(0xFFFF6464), shape: BoxShape.circle),
      child: SvgPicture.asset("assets/icons/heart.svg"),
    );
  }
}
