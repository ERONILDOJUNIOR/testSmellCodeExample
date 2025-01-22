import 'package:test/test.dart';

void main() {
  test('Calculate Total without Redundant Print', () {
    final cart = ShoppingCart();
    cart.add(Item(price: 10));
    cart.add(Item(price: 20));

    expect(cart.getTotalPrice(), equals(30), reason: "Total price should be 30 after adding items");
    expect(cart.getTotalItems(), equals(2), reason: "Total items should be 2 after adding items");
  });
}

class ShoppingCart {
  final List<Item> items = [];

  void add(Item item) {
    items.add(item);
  }

  double getTotalPrice() {
    double total = 0;

    for (var item in items) {
      total = total + item.price;
    }
  
    return total;
  }

  int getTotalItems() {
    return items.length;
  }
}

class Item {
  final double price;

  Item({
    required this.price
  });
}