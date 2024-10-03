import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/main.dart';

void main() {
  // testWidgets بتاعنا من خلال ال  Ui بنبدء نختبر ال
  testWidgets('reverse String App widgets', (widgetsTester) async {
    //  عشان نظهر التطبيق ف بيئه العمل  pumpWidget من خلال ال widgetsTester بنحط التطبيق اللي عايزين نختبره باستخدام
    await widgetsTester.pumpWidget(const ReverseStringApp());

    // find.byType داخل الاسكرينه من خلال ال  TextField دلوقتي بنبحث عن الـ
    // varable وبنضيفها ف
    var reverseStringTextField = find.byType(TextField);

    // واحد على الأقل موجود على الشاشة TextField هنا بنتأكد إن فيه
    // دا موجود الاختبار هيعدي ويديك نتيجه صح  TextField لو ال
    // هيرميلك ايرور  TextField لكن لو ظهر اكتر من
    expect(reverseStringTextField, findsOneWidget);

    // اللي لقاه TextField داخل Hello هنا بنكتب كلمة
    await widgetsTester.enterText(reverseStringTextField, 'Hello');

    // findsOneWidgetولا لا من خلال TextFieldاتكتبت فعلا داخل ال  Hello هنا بنتاكد ان كلمه
    expect(find.text('Hello'), findsOneWidget);

    // find.text داخل الاسكرينه من خلال ال Buttonدلوقتي بنبحث عن الـ
    // varable وبنضيفها ف
    var reverseButton = find.text("Reverse");

    //  موجود فعلا علي الشاشه ولا لا Reverse هنا بنتأكد إن الزرار اللي مكتوب عليه
    expect(reverseButton, findsOneWidget);

    // بنضغط على الزرار اللي لقيناه
    await widgetsTester.tap(reverseButton);

    // بنعمل تحديث للشاشة بعد الضغط عشان نشوف التغيير اللي حصل
    await widgetsTester.pump();

    // موجود فعلا علي الشاشه ولا لا olleHهنا بنتاكد ان ال
    expect(find.text('olleH'), findsOneWidget);
  });
}
