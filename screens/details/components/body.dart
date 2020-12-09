import 'package:ecommerc/constants.dart';
import 'package:ecommerc/models/Product.dart';
import 'package:ecommerc/screens/details/components/CartCounter.dart';
import 'package:ecommerc/screens/details/components/ProductTitleWithImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Description.dart';
import 'SizeColor.dart';
import 'ColorDot.dart';
import 'Love.dart';
import 'AddToCartAndBuyNow.dart';

class Body extends StatelessWidget {
  Product product;
  Body(this.product);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                    padding: EdgeInsets.only(
                        top: size.height * 0.10,
                        left: kDefaultPadding,
                        right: kDefaultPadding),
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                    ),
                    child: Column(
                      children: [
                        SizeColor(product: product),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        Description(product: product),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [CartCounter(), Love()],
                        ),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: kDefaultPadding),
                          child: Row(
                            children: [
                              AddToCart(product: product),
                              BuyNowButton(product: product)
                            ],
                          ),
                        )
                      ],
                    )),
                ProductTitleWithImage(product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
