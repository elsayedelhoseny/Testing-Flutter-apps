import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing/main.dart';
import 'package:flutter/material.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Reverse String App Test', () {
    testWidgets('Reverse a given string', (WidgetTester tester) async {
      // تحميل التطبيق
      await tester.pumpWidget(const ReverseStringApp());

      // البحث عن TextField واختبار كتابه نص فيه
      final textField = find.byType(TextField);
      await tester.enterText(textField, 'Hello');

      // البحث عن الزرار والضغط عليه
      final reverseButton = find.text('Reverse');
      await tester.tap(reverseButton);

      // تحديث واجهة المستخدم بعد الضغط
      await tester.pumpAndSettle();

      // التحقق من أن النص المعكوس ظهر على الشاشة
      expect(find.text('olleH'), findsOneWidget);
    });
  });
}
