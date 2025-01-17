import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Teste de Divisão por Zero', () {
    var result = divide(10, 0); // Exceção esperada, mas não verificada
  });
}

double divide(int a, int b) {
  return a / b;
}