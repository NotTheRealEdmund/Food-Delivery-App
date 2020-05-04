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
        child: ListView(
          children: <Widget>[
            BackArrow(),
            Align(
              alignment: Alignment.center,
              child: Text("Your orders", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
            ),
            SizedBox(height: 30),

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

          ],
        ),
      ),
    );
  }
}