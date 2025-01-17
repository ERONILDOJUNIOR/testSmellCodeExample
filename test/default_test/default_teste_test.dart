import 'package:flutter_test/flutter_test.dart';

class User {
  String name;
  int age;

  User({
    this.name = "",
    this.age = 0
  });
}

void main() {
  test('Valores padrão do usuário', () {
    final user = User();
    expect(user.name, "", reason: "O nome padrão deve ser uma string vazia");
    expect(user.age, 0, reason: "A idade padrão deve ser 0");
  });
}