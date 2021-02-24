import 'package:flutter/material.dart';

class Product {
  final String title, image, descrption;
  final int price, size, id;
  final Color color;

  Product({
    this.title,
    this.image,
    this.descrption,
    this.price,
    this.size,
    this.id,
    this.color,
  });
}
