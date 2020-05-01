import 'package:flutter/material.dart';

import './food.dart';
import './food_card.dart';
import './custom_app_bar.dart';
import './home_title.dart';
import './search_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
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
                  SizedBox(height: 20),
                  HomeTitle(),
                  SizedBox(height: 20),
                  SearchBar(),
                  SizedBox(height: 40),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
