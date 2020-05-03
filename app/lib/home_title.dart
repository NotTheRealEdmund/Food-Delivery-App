import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(45, 35, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Order delicious",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
          Text("food online!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
        ],
      )
    );
  }
}
