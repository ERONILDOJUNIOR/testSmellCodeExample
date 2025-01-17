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
  test('Calcula desconto para valor acima de 100', () {
    final cart = ShoppingCart(150);
    cart.applyDiscount();
    expect(cart.discount, 0.1, reason: "Desconto deve ser 10% para valores acima de 100");
  });

  test('Calcula desconto para valor igual ou abaixo de 100', () {
    final cart = ShoppingCart(50);
    cart.applyDiscount();
    expect(cart.discount, 0, reason: "Desconto deve ser 0 para valores iguais ou abaixo de 100");
  });
}