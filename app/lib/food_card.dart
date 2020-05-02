import 'package:flutter/material.dart';

import './food.dart';
import './cart_list.dart';

class FoodCard extends StatelessWidget {

  final Food food;

  FoodCard(this.food);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                CartList().addToList(food);
              },
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    food.imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              text: food.name + ' by ' + food.shopName + '\n' + 'at only ' + '\$' + food.price.toStringAsFixed(2) + '\t',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black), 
            ),
          ),
          SizedBox(height: 10),
        ]
      ),
    );
  }
}
