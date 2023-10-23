import 'package:flutter_test/flutter_test.dart';
import 'package:calculadora_imc/main.dart'; // Importe o arquivo principal do seu projeto.

void main() {
  testWidgets('Calculadora de IMC', (WidgetTester tester) async {
    // Teste para verificar se a calculadora de IMC está funcionando corretamente.
    // Você pode adicionar seus testes aqui.

    // Exemplo de teste para verificar se a interface do usuário contém um botão "Calcular".
    await tester.pumpWidget(MaterialApp(home: Home()));

    final calcularButton = find.widgetWithText(ElevatedButton, 'Calcular');
    expect(calcularButton, findsOneWidget);
  });

  // Você pode adicionar mais testes conforme necessário.
}
