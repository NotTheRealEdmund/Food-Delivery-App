import 'package:flutter/material.dart';

class CheckoutTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
      child: Align(
        alignment: Alignment.center,
        child: Text("Your orders", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
      ),
    );
  }
}