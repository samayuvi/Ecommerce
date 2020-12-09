import 'package:flutter/material.dart';
import 'package:ecommerc/constants.dart';
import 'package:ecommerc/models/Product.dart';
import 'ColorDot.dart';

class SizeColor extends StatelessWidget {
  const SizeColor({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Color"),
            Row(
              children: [
                ColorDot(
                  color: Color(0xFF356C95),
                  isSelected: true,
                ),
                ColorDot(
                  color: Color(0xFFF8C078),
                ),
                ColorDot(
                  color: Color(0xFFA29B9B),
                )
              ],
            )
          ],
        ),
        Expanded(
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                    style: TextStyle(color: kTextColor),
                    text: "Size\n",
                    children: [
                      TextSpan(
                          text: "${product.size} cm",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(fontWeight: FontWeight.bold))
                    ]),
              )
            ],
          ),
        )
      ],
    );
  }
}
