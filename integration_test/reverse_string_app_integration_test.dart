import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing/main.dart';
import 'package:flutter/material.dart';

void main() {
  // دي خطوة بنقول فيها للتطبيق يجهز نفسه عشان نعمل عليه اختبار شامل
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // بنعمل مجموعة اختبار للتطبيق اللي بيقلب النصوص
  group('Reverse String App Test', () {
    // هنا بنعمل اختبار لاسكرينه معينة وهي قلب النص اللي بندخله
    testWidgets('Reverse a given string', (WidgetTester tester) async {
      // عشان نظهر التطبيق ف بيئه العمل  pumpWidget من خلال ال widgetsTester بنحط التطبيق اللي عايزين نختبره باستخدام
      await tester.pumpWidget(const ReverseStringApp());

      // بندور على خانة الكتابة اللي المستخدم هيكتب فيها النص
      final textField = find.byType(TextField);

      // Hello بنكتب ف خانه الكتابه كاننا المستخدم كلمه
      await tester.enterText(textField, 'Hello');

      //  Reverse بندور على الزر اللي مكتوب عليه
      final reverseButton = find.text('Reverse');

      // بنضغط علي الزرار كاننا بنجرب التطبيق بجد
      await tester.tap(reverseButton);

      // بنستنى شوية لغاية ما التطبيق يخلص كل اللي بيعمله بعد الضغط
      await tester.pumpAndSettle();

      // olleH بنتأكد إن النص اللي ظهر بعد الضغط على الزر هو كلمه
      expect(find.text('olleH'), findsOneWidget);
      // وبس كدا
    });
  });
}
