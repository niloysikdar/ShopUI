import 'package:ShopUI/helper/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(),
    );
  }
}

Widget customAppbar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_rounded,
        size: 30.0,
        color: kTextColor,
      ),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.search,
          size: 30.0,
          color: kTextColor,
        ),
        onPressed: () {},
      ),
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
