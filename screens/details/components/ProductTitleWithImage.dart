import 'package:ecommerc/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:ecommerc/constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  Product product;
  ProductTitleWithImage(this.product);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Price\n",
                ),
                TextSpan(
                    text: "\$${product.price}",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(color: Colors.white))
              ])),
              SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
