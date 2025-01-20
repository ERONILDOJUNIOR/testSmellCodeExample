import 'package:test/test.dart';

void main() {
  test('Calculate Discount with Magic Numbers', () {
    final discount = calculateDiscount(150);  // 150 é um número mágico
    
    expect(discount, equals(20));  // 20 é um número mágico
  });
}

double calculateDiscount(int basePrice) {
  return basePrice * 0.1;  
}