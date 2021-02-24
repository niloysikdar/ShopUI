import 'package:ShopUI/helper/constants.dart';
import 'package:ShopUI/models/productclass.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Product product;
  const DetailsPage({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: detailsAppBar(product, context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Container(
                    height: 500.0,
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.3,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bags for you",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          product.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 50.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: kDefaultPadding * 1.5,
                                left: kDefaultPadding / 2,
                              ),
                              child: Text(
                                "Price\n₹ ${product.price}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              height: 200.0,
                              child: Image.asset(
                                product.image,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget detailsAppBar(Product product, BuildContext context) {
  return AppBar(
    backgroundColor: product.color,
    elevation: 0.0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_rounded,
        color: Colors.white,
        size: 30.0,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.shopping_cart_outlined,
          size: 30.0,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      SizedBox(width: 10.0),
    ],
  );
}
