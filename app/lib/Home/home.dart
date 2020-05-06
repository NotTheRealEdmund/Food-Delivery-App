import 'package:flutter/material.dart';

import 'package:app/cart_list.dart';
import 'package:app/Food/food_list.dart';
import './home_title.dart';
import './cart_icon.dart';
import './show_items.dart';

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

  // String which contains the input from search bar
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Text(result),
            Row (
              children: <Widget>[
                HomeTitle(),
                CartIcon(cartList),
              ],
            ),

            // Search Bar
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 20, 50, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.black45,
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search for your favourite food!",
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        hintStyle: TextStyle(color: Colors.black87),
                      ),
                      onSubmitted: (String str) {
                        setState(() {
                          result = str;
                        });
                      }
                    ),
                  ),
                ],
              ),
            ),

            ShowItems(cartList, foodList),
          ],
        ),
      ),
    );
  }
}