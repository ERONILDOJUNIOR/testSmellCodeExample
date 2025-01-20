import 'package:test/test.dart';

void main() {
  final cart = ShoppingCart();
  cart.add(Item(price: 10));
  cart.add(Item(price: 20));

  test('Redundant Assertion Test 01', () {
    expect(cart.getTotalPrice(), equals(30));
  });

  test('Redundant Assertion Test 03', () {
    expect(cart.getTotalPrice(), equals(30));  // Repetição desnecessária
  });

  test('Redundant Assertion Test 02', () {
    expect(cart.getTotalItems(), equals(2));
  });

  test('Redundant Assertion Test 04', () {
    expect(cart.getTotalItems(), equals(2));  // Repetição desnecessária
  });
}

class ShoppingCart {
  final List<Item> items = [];

  void add(Item item) {
    items.add(item);
  }

  int getTotalItems() {
    return items.length;
  }

  double getTotalPrice() {
    double total = 0;

    for (var item in items) {
      total += item.price; 
    }

    return total;
  }
}

class Item {
  final double price;

  Item({
    required this.price
  });
}