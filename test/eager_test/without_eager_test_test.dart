import 'package:flutter_test/flutter_test.dart';

void main() {
  var user = User(name: "John", email: "john@example.com");
  user.register();

  test('Teste de Nome do Usuário', () {
    expect(user.name, equals("John"));
  });

  test('Teste de Email do Usuário', () {
    expect(user.email, equals("john@example.com"));
  });

  test('Teste de Status de Registro do Usuário', () {
    expect(user.isRegistered, isTrue);
  });

  test('Teste de Data de Registro do Usuário', () {
    expect(user.registrationDate, isNotNull);
  });
}

class User {
  final String name;
  final String email;
  bool isRegistered = false;
  DateTime? registrationDate;

  User({
    required this.name, 
    required this.email
  });

  void register() {
    isRegistered = true;
    registrationDate = DateTime.now();
  }
}