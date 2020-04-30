import 'package:flutter/material.dart';

import './food.dart';

class FoodList {
  List<Food> foodItems;

  FoodList({@required this.foodItems});
}

FoodList foodList = FoodList(foodItems: [
  Food(
    id: 1,
    name: "Orange",
    shopName: "ABC",
    price: 2.24,
    imgUrl: "orange.jpeg",
  ),
  Food(
    id: 2,
    name: "Apple",
    shopName: "XYZ",
    price: 1.69,
    imgUrl: "apple.jpeg",
  ),
]);
