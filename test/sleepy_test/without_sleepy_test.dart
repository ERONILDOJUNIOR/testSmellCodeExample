import 'package:test/test.dart';

void main() {
  test('Optimized Test - Wait for Condition', () async {
    final dataFetcher = DataFetcher();
    await dataFetcher.fetchData();

    // Espera pela condição, sem um tempo fixo
    await waitFor(() => dataFetcher.isDataLoaded); 
    expect(dataFetcher.isDataLoaded, isTrue, reason: 'Data should be loaded once fetch completes');
  });
}

class DataFetcher {
  bool isDataLoaded = false;

  Future<void> fetchData() async {
    await Future.delayed(const Duration(seconds: 3)); // Simula um delay de carregamento
    isDataLoaded = true;
  }
}

Future<void> waitFor(Function condition) async {
  while (!condition()) {
    await Future.delayed(const Duration(milliseconds: 100));
  }
}