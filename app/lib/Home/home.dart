import 'package:flutter/material.dart';

import 'package:app/cart_list.dart';
import 'package:app/Food/food_list.dart';
import './home_title.dart';
import './cart_icon.dart';
import './search_bar.dart';
import './food_card.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  // List of all the user's selected food items
  CartList cartList = CartList();

  // List of all the food items for sale
  FoodList foodList = FoodList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row (
              children: <Widget>[
                HomeTitle(),
                CartIcon(cartList),
              ],
            ),
            SizedBox(height: 20),
            SearchBar(),
            SizedBox(height: 40),
            // Show all the food items for sale
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
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
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}