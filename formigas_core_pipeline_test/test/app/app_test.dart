import 'package:formigas_core_pipeline_test/app/app.dart';
import 'package:formigas_core_pipeline_test/feature/counter/counter_view.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(CounterView), findsOneWidget);
    });
  });
}
