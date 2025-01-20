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

void main() {
  // Em vez de uma General Fixture, cada teste configura seu próprio estado.
  Database createIsolatedDatabase() {
    return Database();
  }

  test('Should add user to the database', () {
    final db = createIsolatedDatabase();
    db.addUser("Alice");
    expect(db.userExists("Alice"), isTrue);
  });

  test('Should add another user to the database', () {
    final db = createIsolatedDatabase();
    db.addUser("Bob");
    expect(db.userExists("Bob"), isTrue);
  });
}
