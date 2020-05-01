import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';

import 'package:app/cart/cartBloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        Bloc((i) => CartBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Delivery App',
        home: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(35, 25, 0, 0),
              child: Column(
                children: <Widget>[
                  CustomAppBar(),
                  SizedBox(height: 30),
                  title(),
                  SizedBox(height: 30),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}

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

Widget title() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      SizedBox(width: 45),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Order delicious", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)
          ),
          Text(
            "food online!", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)
          ),
        ],
      )
    ],
  );
}
