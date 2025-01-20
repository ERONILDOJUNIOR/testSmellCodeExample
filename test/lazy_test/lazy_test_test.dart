import 'package:flutter_test/flutter_test.dart';


void main() {
  test('Lazy Test - Adicionar Item ao Carrinho', () {
    final cart = ShoppingCart();
    cart.add(Item(price: 10));
    
    expect(cart.getTotalItems(), 1);  // Testa apenas uma coisa: o total de itens
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

  bool isValid() {
    return (getTotalItems() > 0);
  }

  bool isEmpty() {
    return items.isEmpty;
  } 
}

class Item {
  final double price;

  Item({
    required this.price
  });
}