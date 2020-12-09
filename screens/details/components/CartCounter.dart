import 'package:flutter/material.dart';
import 'package:ecommerc/constants.dart';
import 'package:ecommerc/models/Product.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(Icon(Icons.remove), () {
          if (numOfItems > 1) {
            numOfItems--;
          }
          setState(() {});
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6.copyWith(),
          ),
        ),
        buildOutlineButton(Icon(Icons.add), () {
          numOfItems++;
          setState(() {});
        }),
      ],
    );
  }

  SizedBox buildOutlineButton(Icon icon, Function press) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: press,
        child: icon,
      ),
    );
  }
}
