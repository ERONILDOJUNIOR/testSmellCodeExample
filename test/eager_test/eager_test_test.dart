import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Teste de Registro do Usuário', () {
    var user = User(name: "John", email: "john@example.com");
  
    user.register();

    // Testa muitas condições ao mesmo tempo
    expect(user.name, equals("John"));
    expect(user.email, equals("john@example.com"));
    expect(user.isRegistered, isTrue);
    expect(user.hasValidEmail, isTrue);
    expect(user.hasValidPassword, isTrue);
    expect(user.registrationDate, isNotNull); 
  });
}

class User {
  final String name;
  final String email;
  bool isRegistered = false;
  bool hasValidEmail = true;
  bool hasValidPassword = true;
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