import 'package:flutter_test/flutter_test.dart';

class ShoppingCart {
  final double totalAmount;
  final double discount;

  ShoppingCart(double amount)
      : totalAmount = amount,
        discount = (amount > 100) ? 0.1 : 0 {
    // Lógica complexa no construtor
    if (totalAmount < 0) {
      throw ArgumentError('Amount cannot be negative');
    }
    // Mais validações e configurações podem ser aplicadas
  }
}

void main() {
  test('Aplica desconto no carrinho para valor acima de 100', () {
    final cart = ShoppingCart(150);
    expect(cart.discount, 0.1, reason: "O desconto deve ser de 10% para valores acima de 100");
  });
}