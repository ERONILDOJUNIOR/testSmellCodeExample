import 'package:test/test.dart';

void main() {
  test('Insensitive Equality in User Greeting', () {
    final greeting = generateGreeting('Alice');

    expect(greeting.toLowerCase().trim(), equals('hello, alice!'), reason: "Greeting should match expected format");
  });
}

String generateGreeting(String name) {
  return ' Hello, $name! '; 
}