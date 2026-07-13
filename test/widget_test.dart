import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_curso_mvvm/main.dart';

void main() {
  testWidgets('Login screen shows form fields and validates empty submit', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Usuário'), findsOneWidget);
    expect(find.text('Senha'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);

    await tester.tap(find.text('Login'));
    await tester.pump();

    expect(find.text('Por favor, insira seu usuário'), findsOneWidget);
    expect(find.text('Por favor, insira sua senha'), findsOneWidget);
  });
}
