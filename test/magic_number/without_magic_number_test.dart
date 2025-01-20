import 'package:test/test.dart';

void main() {
  test('Calculate Discount without Magic Numbers', () {
    const int basePrice = 150;  // Definição clara do preço base
    const int expectedDiscount =  15;  // Definição clara do desconto esperado
    
    final discount = calculateDiscount(basePrice);
    expect(discount, equals(expectedDiscount), reason: "Discount should be 15 for base price of 150");
  });
}

double calculateDiscount(int basePrice) {
  const double discountRate = 0.1;  // Taxa de desconto bem definida
  return basePrice * discountRate;  // Aplica o desconto baseado na taxa
}