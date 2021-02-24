import 'package:ShopUI/helper/constants.dart';
import 'package:ShopUI/models/productclass.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function onpress;
  const ItemCard({
    Key key,
    this.product,
    this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 150.0,
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Image.asset(
                product.image,
                height: 130.0,
              ),
            ),
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          product.title,
          style: TextStyle(
            color: kTextColor,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "₹ ${product.price.toString()}",
          style: TextStyle(
            color: kTextColor,
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
