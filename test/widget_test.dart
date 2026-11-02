// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:asi_1/main.dart';

void main() {
  testWidgets('Center screen shows profile and settings', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Center'), findsOneWidget);
    expect(find.text('Hammam Awawdeh'), findsOneWidget);
    expect(find.text('846'), findsOneWidget);
    expect(find.text('Address'), findsOneWidget);
    expect(find.text('Privacy'), findsOneWidget);
    expect(find.text('General'), findsOneWidget);
    expect(find.text('Notification'), findsOneWidget);
  });
}
