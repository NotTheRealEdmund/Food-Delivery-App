import 'package:flutter/material.dart';

class Food {
  int id;
  String name;
  String shopName;
  double price;
  String imgUrl;
  int quantity;

  Food({
    @required this.id,
    @required this.name,
    @required this.shopName,
    @required this.price,
    @required this.imgUrl,
    this.quantity = 1,
  });

  void increaseQuantity() {
    this.quantity++;
  }

  void decreaseQuantity() {
    this.quantity--;
  }
}
