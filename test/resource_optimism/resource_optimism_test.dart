import 'dart:io';
import 'package:test/test.dart';

void main() {
  test('File Read with Resource Optimism', () {
    final file = File('config.txt');  // Depende da presença de um arquivo externo
    final content = file.readAsStringSync();
    
    expect(content.contains('settings'), isTrue, reason: "File content should contain settings information");
  });
}