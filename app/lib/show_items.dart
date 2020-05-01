import 'package:flutter/material.dart';

import './food.dart';
import './food_card.dart';

class ShowItems extends StatelessWidget {
  final List<Food> allFoodItems = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
      child: SingleChildScrollView(
        child: ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: allFoodItems.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: FoodCard(
                  allFoodItems[index],
                ),
              );
            }),
      ),
    );
  }
}
