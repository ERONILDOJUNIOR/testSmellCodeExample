import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Teste de Registro de Usuário', () {
    var user = User(name: "John", email: "john@example.com");

    user.register();

    expect(user.isRegistered, isTrue);
  });
}

class User {
  final String name;
  final String email;
  bool isRegistered = false;

  User({
    required this.name, 
    required this.email
  });

  void register() {
    isRegistered = true;
  }
}