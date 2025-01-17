import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Teste sem Assertion Roulette', () {
    final valores = [10, 20, 30];

    expect(valores.length, 4, reason: "A lista deve conter exatamente 4 elementos");
    expect(valores[0], 5, reason: "O primeiro valor da lista deveria ser 5");
    expect(valores.contains(50), true, reason: "A lista deveria conter o valor 50");
  });
}