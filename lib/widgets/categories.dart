import 'package:ShopUI/helper/constants.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Bags", "Dress", "Footwear", "Jewellery", "Foods"];
  int currentCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentCategoryIndex = index;
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      color: currentCategoryIndex == index
                          ? kTextColor
                          : kTextLightColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  margin: EdgeInsets.only(left: kDefaultPadding),
                  height: 2.0,
                  width: 35.0,
                  color: currentCategoryIndex == index
                      ? Colors.black
                      : Colors.transparent,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
