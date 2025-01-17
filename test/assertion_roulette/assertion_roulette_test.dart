import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Teste com Assertion Roulette', () {
    final valores = [10, 20, 30];

    expect(valores.length, 4); // Falha possível, mas sem indicar o motivo
    expect(valores[0], 5); // Outra falha possível, sem explicação
    expect(valores.contains(50), true); // Falha possível, sem contexto
  });
}