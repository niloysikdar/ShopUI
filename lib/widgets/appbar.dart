import 'package:ShopUI/helper/constants.dart';
import 'package:flutter/material.dart';

Widget customAppbar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(
      "ShopUI",
      style: TextStyle(
        color: kTextColor,
        fontSize: 22.0,
      ),
    ),
    centerTitle: true,
    actions: [
      IconButton(
        icon: Icon(
          Icons.shopping_cart_outlined,
          size: 30.0,
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      SizedBox(width: 10.0),
    ],
  );
}
