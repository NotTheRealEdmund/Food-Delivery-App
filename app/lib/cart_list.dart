import 'package:app/food.dart';

class CartList {
  
  List<Food> foodItems = [];

  List<Food> addToList(Food food) {
    bool isPresent = false;
    if (foodItems.length > 0) {
      for (int i=0; i<foodItems.length; i++) {
        if (foodItems[i].id == food.id) {
          increaseItemQuantity(food);
          isPresent = true;
          break;
        } else {
          isPresent = false;
        }
      }
      if (!isPresent) {
        foodItems.add(food);
      }
    } else {
      foodItems.add(food);
    }
    return foodItems;
  }

  List<Food> removeFromList(Food food) {
    if (food.quantity > 1) {
      decreaseItemQuantity(food);
    } else {
      foodItems.remove(food);
    }
    return foodItems;
  }

  List<Food> getList() {
    return foodItems;
  }

  void increaseItemQuantity(Food food) => food.increaseQuantity();
  void decreaseItemQuantity(Food food) => food.decreaseQuantity();
}