import 'package:flutter_test/flutter_test.dart';

double divide(int a, int b) {
  if (b == 0) {
    throw UnsupportedError('Division by zero is not supported'); 
  }
  return a / b;
}

void main() {
  final list = [2, 1, 0];

  test('Teste de Divisão por Zero, exemplo 01', () {
    var result = divide(10, list[0]); 
    expect(result, 5);
  });

  test('Teste de Divisão por Zero, exemplo 02', () {
    var result = divide(10, list[1]); 
    expect(result, 10);
  });

  test('Teste de Divisão por Zero', () {
    try {
      var result = divide(10, list[0]); 
      expect(result, 0);
    } catch (e) {
      assert(e is UnsupportedError, "Esperava-se uma UnsupportedError"); 
    }
  });
}

