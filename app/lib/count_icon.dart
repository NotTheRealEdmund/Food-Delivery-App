import 'package:flutter/material.dart';

import './checkout.dart';

class CountIcon extends StatelessWidget {
  String count;
  CountIcon(this.count);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(40, 45, 0, 0),
      child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Checkout()));
          },
          child: Container(
            margin: EdgeInsets.only(right: 30),
            child: Text(count.toString()),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.orange[300],
                borderRadius: BorderRadius.circular(50)),
          )),
    );
  }
}
