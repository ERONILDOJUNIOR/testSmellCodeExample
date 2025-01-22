import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Calculate Discount Test", () {
    var cart = ShoppingCart();
    cart.addItem(Item(price: 100));
    // ignore: unused_local_variable
    var discount = cart.calculateDiscount();
  
  });
} 

class ShoppingCart {
  List<Item> items = [];

  void addItem(Item item) {
    items.add(item);
  }

  double calculateDiscount() {
    double total = 0;

    for (var item in items) {
      total = total + item.price;
    }

    return (total * 0.1); // Desconto de 10%
  }
}

class Item {
  int price;

  Item({
    required this.price
  });
}