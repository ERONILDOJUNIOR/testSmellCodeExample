import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Teste de Login', () {
    var user = createUser();  // Depende do sucesso de outro teste que cria o usuário
    var session = createSession(user);  // Depende do sucesso de createUser()
    expect(session.isActive, isTrue, reason: "A sessão deveria estar ativa");
  });

  test('Teste de Criação de Usuário', () {
    var user = createUser();  // Teste que cria o usuário
    expect(user, isNotNull, reason: "Usuário deveria ser criado com sucesso");
  });
}

class User {
  final String name;

  User({
    required this.name
  });
}

class Session {
  final User user;

  Session(this.user);

  bool get isActive => true;
}

User createUser() {
  return User(name: "John");
}

Session createSession(User user) {
  return Session(user);
}