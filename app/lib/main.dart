import 'package:flutter/material.dart';

import './cart_list.dart';
import './food_list.dart';
import './home_title.dart';
import './count_icon.dart';
import './search_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

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

  // Total number of user's selected items shown in count icon
  String count = '0';

  int getTotalItems() {
    int num = 0;
    for (var item in cartList.getList()) {
      num += item.quantity;
    }
    return num;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row (
              children: <Widget>[
                HomeTitle(),
                CountIcon(count),
              ],
            ),
            SizedBox(height: 20),
            SearchBar(),
            SizedBox(height: 40),
            
            // Show all the food items for sale
            new Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
              child: SingleChildScrollView(
                child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: foodList.showItems().length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        
                        // FoodCard
                        child: Card(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: GestureDetector(
                                  onTap: () {
                                    cartList.addToList(foodList.showItems()[index]);
                                    setState(() {
                                      this.count = getTotalItems().toString();
                                    });
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 200,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        foodList.showItems()[index].imgUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              RichText(
                                text: TextSpan(
                                  text: foodList.showItems()[index].name + ' by ' + foodList.showItems()[index].shopName + '\n' + 'at only ' + '\$' + foodList.showItems()[index].price.toStringAsFixed(2) + '\t',
                                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black), 
                                ),
                              ),
                              SizedBox(height: 10),
                            ]
                          ),
                        ),
                        
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