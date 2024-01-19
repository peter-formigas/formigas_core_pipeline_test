import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pipeline_dev/feature/counter/counter_controller.dart';
import 'package:pipeline_dev/feature/counter/counter_model.dart';
import 'package:pipeline_dev/feature/counter/counter_view.dart';

void main() {
  group('App', () {
    const model = CounterModel(count: 2);
    final controller = CounterControllerImplementation()..model = model;
    testWidgets('renders Counter', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: CounterView(controller: controller),
        ),
      );
      expect(
        find.byType(CounterView),
        findsOneWidget,
      );
    });
  });
}
