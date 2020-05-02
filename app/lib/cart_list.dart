import 'package:app/food.dart';

class CartList {
  
  List<Food> foodItems = [];

  void addToList(Food food) {
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
  }

  void removeFromList(Food food) {
    if (food.quantity > 1) {
      decreaseItemQuantity(food);
    } else {
      foodItems.remove(food);
    }
  }

  List<Food> getList() {
    return foodItems;
  }

  void increaseItemQuantity(Food food) => food.increaseQuantity();
  void decreaseItemQuantity(Food food) => food.decreaseQuantity();
}