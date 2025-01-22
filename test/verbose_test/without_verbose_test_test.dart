import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Calculate Total Price", () {
    var cart = ShoppingCart();
    cart.add(Item(price: 10));
    cart.add(Item(price: 20));

    expect(cart.getTotalPrice(), 30, reason: "Expected total price to be 30");
    expect(cart.getTotalItems(), 2, reason: "Expected total items to be 2");
  });
}

class ShoppingCart {
  List<Item> items = [];

  void add(Item item) {
    items.add(item);
  }

  int getTotalItems() {
    return items.length;
  }

  double getTotalPrice() {
    double total = 0;

    for (var item in items) {
      total = total + item.price;
    }

    return total;
  }

  bool isValid() {
    return getTotalItems() > 0;
  } 

  bool hasDiscount() {
    return getTotalPrice() > 50;
  }
}

class Item {
  int price;

  Item({
    required this.price
  });
}