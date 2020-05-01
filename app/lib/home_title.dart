import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: 45),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Order delicious",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
            Text("food online!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
          ],
        )
      ],
    );
  }
}
