import 'package:flutter/material.dart';
import 'package:ecommerc/constants.dart';
import 'package:ecommerc/models/Product.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 50,
        child: FlatButton(
          onPressed: () {},
          color: product.color,
          child: Text(
            "Buy Now".toUpperCase(),
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: kDefaultPadding),
        width: 58,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: product.color)),
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: product.color,
          ),
        ));
  }
}
