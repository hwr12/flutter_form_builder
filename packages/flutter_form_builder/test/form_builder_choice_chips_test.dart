import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'form_builder_tester.dart';

void main() {
  testWidgets('FormBuilderChoiceChip -- 1,3', (WidgetTester tester) async {
    const widgetName = 'cc1';
    final testWidget = FormBuilderChoiceChip<int>(
      shouldRequestFocus: false,
      name: widgetName,
      options: const [
        FormBuilderChipOption(key: ValueKey('1'), value: 1),
        FormBuilderChipOption(key: ValueKey('2'), value: 2),
        FormBuilderChipOption(key: ValueKey('3'), value: 3),
      ],
    );
    await tester.pumpWidget(buildTestableFieldWidget(testWidget));

    expect(formSave(), isTrue);
    expect(formValue(widgetName), isNull);
    await tester.tap(find.byKey(const ValueKey('1')));
    await tester.pumpAndSettle();
    expect(formSave(), isTrue);
    expect(formValue(widgetName), equals(1));
    await tester.tap(find.byKey(const ValueKey('3')));
    await tester.pumpAndSettle();
    expect(formSave(), isTrue);
    expect(formValue(widgetName), equals(3));
  });
}
