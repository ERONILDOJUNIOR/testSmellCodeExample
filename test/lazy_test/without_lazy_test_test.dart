import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Teste - getTotalITems', () {
    final cart = ShoppingCart();
    cart.add(Item(price: 10));
    
    // Verifica o total de itens
    expect(cart.getTotalItems(), 1);
  });

  test('Teste - getTotalPrice', () {
    final cart = ShoppingCart();
    cart.add(Item(price: 10));
    
    // Verifica o preço total
    expect(cart.getTotalPrice(), 10);
  });

  test('Teste - isValid', () {
    final cart = ShoppingCart();
    cart.add(Item(price: 10));
    
    // Verifica a validade do carrinho
    expect(cart.isValid(), isTrue);
  });

  test('Teste - isEmpty', () {
    final cart = ShoppingCart();
    cart.add(Item(price: 10));
    
    // Cenário de borda: verifica se o carrinho não está vazio
    expect(cart.isEmpty(), isFalse);
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
    return getTotalItems() > 0;
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