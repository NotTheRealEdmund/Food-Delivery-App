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
        theme: ThemeData(primarySwatch: Colors.blue, accentColor: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Food Delivery App'),
          ),
        ),
      ),
    );
  }
}
