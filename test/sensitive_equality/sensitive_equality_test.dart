import 'package:test/test.dart';

void main() {
  test('Sensitive Equality in User Greeting', () {
    final greeting = generateGreeting('Alice');
    
    expect(greeting, equals('Hello, Alice!'), reason: "Greeting should match exactly 'Hello, Alice!'");
  });
}

String generateGreeting(String name) {
  return 'Hello, $name!'; // Possível variação no formato, como espaços extras
}