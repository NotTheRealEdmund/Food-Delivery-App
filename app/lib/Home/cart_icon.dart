import 'package:flutter/material.dart';

import 'package:app/cart_list.dart';
import 'package:app/Checkout/checkout.dart';

class CartIcon extends StatelessWidget {
  CartList cartList;
  CartIcon(this.cartList);

  // A method that launches checkout.dart and awaits the result from Navigator.pop from checkout.dart
  goToCheckoutPage(BuildContext context) async {
    var result = await Navigator.push(
      context, MaterialPageRoute(builder: (context) => Checkout(cartList)),
    );
    if (result != null) {
      // Show toast "Item has been removed from cart!"
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 45, 0, 0),
      child: GestureDetector(
        onTap: () {
          goToCheckoutPage(context);
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
