import 'package:test/test.dart';

void main() {
  test('Sleepy Test - Fixed Delay', () async {
    final dataFetcher = DataFetcher();
    dataFetcher.fetchData();
    
    // Espera fixa de 5 segundos
    await Future.delayed(const Duration(seconds: 5)); 
    expect(dataFetcher.isDataLoaded, isTrue, reason: 'Data should be loaded after 5 seconds');
  });
}

class DataFetcher {
  bool isDataLoaded = false;
  
 Future<void> fetchData() async {
    await Future.delayed(const Duration(seconds: 5)); // Simula um delay de carregamento
    isDataLoaded = true;
  }
}