import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.menu),
            GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Text("0"),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.orange[300],
                      borderRadius: BorderRadius.circular(50)),
                ))
          ],
        ));
  }
}
