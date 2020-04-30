import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

import 'package:app/food/food.dart';
import './cartProvider.dart';

class CartBloc extends BlocBase {

  CartBloc();

  var _listController = BehaviorSubject<List<Food>>.seeded([]);

  // Provider class
  CartProvider provider = CartProvider();

  // Input
  Sink<List<Food>> get listSink => _listController.sink;

  // Output
  Stream<List<Food>> get listStream => _listController.stream;

  addToList(Food food) {
    listSink.add(provider.addToList(food));
  }

  removeFromList(Food food) {
    listSink.add(provider.removeFromList(food));
  }

  // Dispose will be called automatically by closing its streams
  @override
  void dispose() {
    _listController.close();
    super.dispose();
  }
}