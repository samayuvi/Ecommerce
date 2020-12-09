import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ecommerc/constants.dart';
import 'package:ecommerc/models/Product.dart';
import 'package:ecommerc/screens/details/DetailsScreen.dart';

class ItemCard extends StatelessWidget {
  int index;

  Product product;

  ItemCard(
    this.product,
  );
  @override
  Widget build(BuildContext context) {
    int price = product.price;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsScreen(product)),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
                padding: EdgeInsets.all(kDefaultPadding),
                decoration: BoxDecoration(
                    color: product.color,
                    borderRadius: BorderRadius.circular(15)),
                child: Hero(
                    tag: "${product.id}", child: Image.asset(product.image))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(product.title),
          ),
          Text(
            "\$$price",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
