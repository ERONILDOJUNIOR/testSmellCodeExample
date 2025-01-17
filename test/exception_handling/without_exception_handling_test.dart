import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Teste de Divisão por Zero', () {
    try {
      var result = divide(10, 0);
    } catch (e) {
      assert(e is UnsupportedError, "Esperava-se uma UnsupportedError"); 
    }
  });
}

double divide(int a, int b) {
  if (b == 0) {
    throw UnsupportedError('Division by zero is not supported'); 
  }
  return a / b;
}