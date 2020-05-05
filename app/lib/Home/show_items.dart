import 'package:flutter/material.dart';

import 'package:app/cart_list.dart';
import 'package:app/Food/food_list.dart';
import './food_card.dart';

class ShowItems extends StatelessWidget {
  CartList cartList;
  FoodList foodList;

  ShowItems(this.cartList, this.foodList);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: foodList.showItems().length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: FoodCard(foodList.showItems()[index], cartList),
                );
              }),
        ),
      ),
    );
  }
}