import 'package:flutter/material.dart';

import 'package:app/Food/food.dart';
import 'package:app/cart_list.dart';

class FoodCard extends StatelessWidget {
  Food food;
  CartList cartList;
  FoodCard(this.food, this.cartList);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                food.imgUrl,
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(food.quantity.toString() + " x " + food.name,
                    style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Align(
            alignment: Alignment.center,
            child: Text("\$" + (food.quantity * food.price).toStringAsFixed(2)),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: RaisedButton(
              onPressed: () {
                String name = food.name;
                cartList.removeFromList(food);
                Navigator.pop(context, name);
              },
              child: Text(
                "Remove",
              ),
            ),
          ),
        ],
      ),
    );
  }
}