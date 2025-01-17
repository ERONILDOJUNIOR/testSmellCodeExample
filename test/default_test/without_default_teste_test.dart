import 'package:flutter_test/flutter_test.dart';

class User {
  String name;
  int age;

  User({
    required this.name, 
    required this.age
  });
}

void main() {
  test('Criação de usuário com valores específicos', () {
    final user = User(name: "John", age: 30);
    expect(user.name, "John", reason: "O nome deve ser 'John'");
    expect(user.age, 30, reason: "A idade deve ser 30");
  });
}