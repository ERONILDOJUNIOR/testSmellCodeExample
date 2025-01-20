import 'package:test/test.dart';

class Database {
  List<String> users = [];

  void addUser(String user) {
    users.add(user);
  }

  void clear() {
    users.clear();
  }

  bool userExists(String user) {
    return users.contains(user);
  }
}

// General Fixture usada para configurar o estado compartilhado.
class UserDatabaseFixture {
  Database db = Database();

  void createTestUser(String user) {
    db.addUser(user);
  }
}

void main() {
  final fixture = UserDatabaseFixture(); // General Fixture compartilhada por todos os testes.

  test('Deve adicionar user a database', () {
    fixture.createTestUser("Alice");
    expect(fixture.db.userExists("Alice"), isTrue);
  });

  test('SDeve adicionar outro user a database', () {
    fixture.createTestUser("Bob");
    expect(fixture.db.userExists("Bob"), isTrue);
  });
}