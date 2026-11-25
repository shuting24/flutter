import 'package:flutter_test/flutter_test.dart';

import 'package:random_project_name/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MainPage());

    // Verify that your text widgets render.
    expect(find.text('random Text'), findsWidgets);
  });
}
