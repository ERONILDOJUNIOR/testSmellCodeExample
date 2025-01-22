import 'package:test/test.dart';

void main() {
  test('Redundant Print Test', () {
    final cart = ShoppingCart();
    cart.add(Item(price: 10));
    cart.add(Item(price: 20));
  
    print("Total Price: ${cart.getTotalItems()}");
    print("Total Items: ${cart.getTotalItems()}");
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