import 'package:flutter/material.dart';

import './cart_list.dart';
import './back_arrow.dart';

class Checkout extends StatelessWidget {
  CartList cartList;
  Checkout(this.cartList);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            BackArrow(),
            SizedBox(height: 30),
            Text("Your orders", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
            SizedBox(height: 30),
            
          ],
        ),
      ),
    );
  }
}