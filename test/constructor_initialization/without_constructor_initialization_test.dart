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
  test('Aplica desconto no carrinho para valor acima de 100', () {
    final cart = ShoppingCart(150);
    cart.applyDiscount();
    expect(cart.discount, 0.1, reason: "O desconto deve ser de 10% para valores acima de 100");
  });
}