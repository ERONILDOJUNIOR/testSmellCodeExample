import 'package:test/test.dart';

class User {
  int id;
  bool logged = false;

  User(this.id) {
    logged = true;
  }

  isLoggedIn() {
    if (logged == true) {
      return true;
    }
    return false;
  }
}

void main() {
  // Pula
  test('Teste a ser ignorado, exemplo 01', () {
    final user = User(01);
    expect(user.isLoggedIn(), true);
  }, skip: true);

  // Pula
  test('Teste a ser ignorado, exemplo 02', () {
    final user = User(01);
    expect(user.isLoggedIn(), true);
  }, skip: "pula");

  // Não pula
  test('Teste a ser ignorado, exemplo 03', () {
    final user = User(01);
    expect(user.isLoggedIn(), true);
  }, skip: false);
}