import 'package:test/test.dart';

void main() {
  test('User Profile with Mystery Guest', () {
    final userProfile = fetchUserProfile();  // Depende de um usuário "Alice" configurado externamente
    
    expect(userProfile.name, equals("Alice"));
  });
}

UserProfile fetchUserProfile() {
  // Simula a recuperação do perfil de um usuário de um banco de dados externo
  // Aqui, a suposição é de que "Alice" é um usuário existente
  return UserProfile(name: "Alice");
}

class UserProfile {
  final String name;

  UserProfile({
    required this.name
  });
}