import 'package:flutter/material.dart';
import 'package:ecommerc/constants.dart';
import 'package:ecommerc/models/Product.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen(this.product);
  Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: Colors.white,
            ),
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
            ),
          ),
          SizedBox(
            width: kDefaultPadding / 2,
          )
        ],
      ),
      body: Body(product),
    );
  }
}
