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
  test('Teste a ser ignorado, exemplo 01', () {
    final user = User(01);
    expect(user.isLoggedIn(), true);
  });
 
  test('Teste a ser ignorado, exemplo 02', () {
    final user = User(01);
    expect(user.isLoggedIn(), true);
  }, skip: false);
}