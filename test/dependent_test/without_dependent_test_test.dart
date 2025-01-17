import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Teste de Login', () {
    var user = User(name: "John");
    var session = Session(user);
    expect(session.isActive, isTrue, reason: "A sessão deve estar ativa após o login do usuário");
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