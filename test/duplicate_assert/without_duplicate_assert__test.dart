import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Teste de Nome de Usuário', () {
    var user = User(name: "John");

    expect(user.name, equals("John"));
  });
}

class User {
  final String name;

  User({
    required this.name
  });
}