import 'package:flutter/material.dart';

import './food.dart';
import './food_card.dart';

class ShowItems extends StatelessWidget {
  final List<Food> allFoodItems = [
    Food(
      id: 1,
      name: "Burger",
      shopName: "The Burger Shop",
      price: 8.30,
      imgUrl: "burger.jpeg",
    ),
    Food(
      id: 2,
      name: "Burrito",
      shopName: "The Burrito Shop",
      price: 4.90,
      imgUrl: "burrito.jpeg",
    ),
    Food(
      id: 3,
      name: "Pasta",
      shopName: "The Pasta Shop",
      price: 6.80,
      imgUrl: "pasta.jpg",
    ),
    Food(
      id: 4,
      name: "Pizza",
      shopName: "The Pizza Shop",
      price: 10.40,
      imgUrl: "pizza.jpeg",
    ),
    Food(
      id: 5,
      name: "Salad",
      shopName: "The Salad Shop",
      price: 2.50,
      imgUrl: "salad.jpeg",
    ),
    Food(
      id: 6,
      name: "Sandwich",
      shopName: "The Sandwich Shop",
      price: 4.40,
      imgUrl: "sandwich.jpeg",
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
