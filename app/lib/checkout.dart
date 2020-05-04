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
            SizedBox(height: 45),

            SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: cartList.getList().length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 10),
                        Image.asset(
                          cartList.getList()[index].imgUrl,
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 25),
                        Text(cartList.getList()[index].quantity.toString() + " x " + cartList.getList()[index].name,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 25),
                        Text("\$" + (cartList.getList()[index].quantity * cartList.getList()[index].price).toStringAsFixed(2)),
                        SizedBox(width: 25),
                        RaisedButton(
                          onPressed: () {},
                          child: Text(
                            "Remove",
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