import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Calculate total price test", () {
    var cart = ShoppingCart();
    
    Item? item1 = Item(price: 10);
    Item? item2 = Item(price: 20);
    cart.add(item1);
    cart.add(item2);

    // Realizando verificações detalhadas
    expect(cart.getTotalItems(), 2);
    expect(cart.getTotalPrice(), 30);
    expect(cart.isValid(), isTrue);
    expect(cart.hasDiscount(), isFalse);
    expect(cart.items.contains(item1), isTrue);
    expect(cart.items.contains(item2), isTrue);

    // Limpeza manual de objetos (excessivo aqui)
    item1 = null;
    item2 = null;
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