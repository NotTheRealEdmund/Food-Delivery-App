import 'package:flutter/material.dart';

import './cart_list.dart';

class Checkout extends StatelessWidget {
  CartList cartList;
  Checkout(this.cartList);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Return'),
        ),
      ),
    );
  }
}