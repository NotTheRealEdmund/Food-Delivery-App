import 'package:flutter/material.dart';

import 'package:app/cart_list.dart';
import 'package:app/Food/food_list.dart';
import 'package:app/Food/food.dart';
import './food_card.dart';

class ShowItems extends StatelessWidget {
  CartList cartList;
  FoodList foodList;
  String result;

  ShowItems(this.cartList, this.foodList, this.result);

  // The list that will be shown after filtering result from search bar
  List<Food> tempList = [];

  int getFilteredList() {
    if (result != "") {
      for (Food item in foodList.showItems()) {
        if (item.name.toLowerCase().contains(result.toLowerCase())) {
          tempList.add(item);
        }
      }
      return tempList.length;
    } else {
      tempList = foodList.showItems();
      return tempList.length;
    }
  }

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
              itemCount: getFilteredList(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: FoodCard(tempList[index], cartList),
                );
              }),
        ),
      ),
    );
  }
}