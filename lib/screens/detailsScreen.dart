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
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.3,
                    ),
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.14,
                      left: kDefaultPadding,
                      right: kDefaultPadding,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    "Colors",
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(5.0),
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF3D82AE),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(5.0),
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFD3A984),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.all(5.0),
                                      height: 20.0,
                                      width: 20.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF989493),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text(
                                    "Size",
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    "${product.size}",
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          product.descrption,
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(height: 30.0),
                        CounterCard(),
                        SizedBox(height: 30.0),
                        BuyNowCard(product: product),
                      ],
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
                              child: Hero(
                                tag: product.id,
                                child: Image.asset(
                                  product.image,
                                  fit: BoxFit.fill,
                                ),
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

class BuyNowCard extends StatelessWidget {
  const BuyNowCard({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: kDefaultPadding),
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              color: product.color,
              width: 1.5,
            ),
          ),
          child: Center(
            child: Icon(
              Icons.shopping_cart_outlined,
              size: 35.0,
              color: product.color,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 60.0,
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Text(
                "Buy Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ],
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

class CounterCard extends StatefulWidget {
  @override
  _CounterCardState createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
  int counter = 1;
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                if (counter > 0) {
                  setState(() {
                    counter -= 1;
                  });
                }
              },
              child: Container(
                margin: EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.remove,
                  size: 40.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: kTextColor,
                    width: 1.5,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
            Text(
              counter.toString().padLeft(2, "0"),
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  counter += 1;
                });
              },
              child: Container(
                margin: EdgeInsets.only(left: 15.0),
                child: Icon(
                  Icons.add,
                  size: 40.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: kTextColor,
                    width: 1.5,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isLiked = !isLiked;
            });
          },
          child: Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              color: isLiked ? Colors.white : Colors.red[700],
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(
                color: Colors.red[700],
                width: 1.5,
              ),
            ),
            child: Center(
              child: Icon(
                Icons.favorite,
                size: 30.0,
                color: isLiked ? Colors.red[700] : Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
