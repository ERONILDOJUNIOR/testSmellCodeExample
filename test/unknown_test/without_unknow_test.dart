import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Calculate Discount Test", () {
    var cart = ShoppingCart();
    cart.addItem(Item(price: 100));
    var discount = cart.calculateDiscount();
    
    expect(discount, 10, reason: "Expected discount to be 10% of the total price");
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