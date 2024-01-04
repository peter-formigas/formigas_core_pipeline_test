import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formigas_core_pipeline_test/feature/counter/counter_controller_implementation.dart';
import 'package:formigas_core_pipeline_test/feature/counter/counter_model.dart';
import 'package:formigas_core_pipeline_test/feature/counter/counter_view.dart';

void main() {
  group('App', () {
    final controller = CounterControllerImplementation();
    const model = CounterModel(count: 2);
    testWidgets('renders Counter', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: CounterView(
            controller: controller,
            model: model,
          ),
        ),
      );
      expect(
        find.byType(CounterView),
        findsOneWidget,
      );
    });
  });
}
