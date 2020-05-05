import 'package:flutter/material.dart';

import 'package:app/cart_list.dart';
import './back_arrow.dart';
import './checkout_title.dart';
import 'package:nice_button/NiceButton.dart';

class Checkout extends StatelessWidget {
  CartList cartList;
  Checkout(this.cartList);

  // Calculate total price for all items in cart list
  double getTotalAmount() {
    double num = 0;
    for (var item in cartList.getList()) {
      num += item.quantity * item.price;
    }
    return num;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            BackArrow(),
            CheckoutTitle(),
            SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: cartList.getList().length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              cartList.getList()[index].imgUrl,
                              height: 120,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(cartList.getList()[index].quantity.toString() + " x " + cartList.getList()[index].name,
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text("\$" + (cartList.getList()[index].quantity * cartList.getList()[index].price).toStringAsFixed(2)),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: RaisedButton(
                            onPressed: () {},
                            child: Text(
                              "Remove",
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              ),
            ),
            SizedBox(height: 45),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Text("Total: ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                  child: Text("\$" + getTotalAmount().toStringAsFixed(2), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
                ),
              ],
            ),
            SizedBox(height: 45),
            NiceButton(
              width: 255,
              elevation: 8.0,
              radius: 52.0,
              text: "Proceed to Payment",
              background: Colors.blue,
              onPressed: () {},
            ),
            SizedBox(height: 45),
          ],
        ),
      ),
    );
  }
}