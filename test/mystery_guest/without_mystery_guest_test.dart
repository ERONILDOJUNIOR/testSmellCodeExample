import 'package:test/test.dart';

void main() {
  test('User Profile without Mystery Guest', () {
    final testUser = User(id: 1, name: "Alice");
    final userProfile = fetchUserProfile(testUser.id);
    
    expect(userProfile.name, equals(testUser.name), reason: "Expected user name to be Alice for test user with ID 1");
  });
}

UserProfile fetchUserProfile(int userId) {
  // Retorna um perfil de usuário simulado para o teste, sem dependência externa
  return UserProfile(id: userId, name: "Alice");
}

class User {
  final int id;
  final String name;
  
  User({
    required this.id, 
    required this.name
  });
}

class UserProfile {
  final int id;
  final String name;

  UserProfile({
    required this.id,
    required this.name
  });
}
