import 'package:flutter_test/flutter_test.dart';

class ShoppingCart {
  final double totalAmount;
  double discount = 0;

  ShoppingCart(this.totalAmount);

  void applyDiscount() {
    if (totalAmount < 0) {
      throw ArgumentError('Amount cannot be negative');
    }
    discount = totalAmount > 100 ? 0.1 : 0;
  }
}

void main() {
  test('Calcula o desconto com lógica condicional', () {
    final cart = ShoppingCart(50);
    cart.applyDiscount();
    
    if (cart.totalAmount > 100) {
      expect(cart.discount, 0.1); // Só é executado se a condição for verdadeira
    } else {
      expect(cart.discount, 0); // Pode passar sem verificar todas as possibilidades
    }
  });
}