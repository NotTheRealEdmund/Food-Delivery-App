import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  String count;
  CustomAppBar(this.count);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(35, 45, 0, 0),
      child: GestureDetector(
        onTap: () {},
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