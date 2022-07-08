import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_list_product/main.dart';

import 'package:get/get.dart';

void main() {
  group('Test Navigation', () {
    testWidgets('Test Initial Route', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(Get.currentRoute, '/');
    });
    testWidgets('Test Navigate To ProductsView', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.text('View Product List'), findsNWidgets(1));
      await tester.tap(find.text('View Product List'));
      expect(Get.currentRoute, '/products');
    });
  });
}
