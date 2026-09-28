import 'package:flutter_test/flutter_test.dart';
import 'package:app17/main.dart';

void main() {
  testWidgets('WordSpark renders app correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const WordSparkApp());
    expect(find.byType(WordSparkApp), findsOneWidget);
  });
}
