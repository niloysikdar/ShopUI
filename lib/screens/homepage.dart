import 'package:ShopUI/helper/constants.dart';
import 'package:ShopUI/models/productlist.dart';
import 'package:ShopUI/widgets/appbar.dart';
import 'package:ShopUI/widgets/categories.dart';
import 'package:ShopUI/widgets/itemcard.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Text(
              "Welcome",
              style: TextStyle(
                color: kTextColor,
                fontSize: 25.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Categories(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                ),
                itemBuilder: (context, index) {
                  return ItemCard(
                    product: products[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
