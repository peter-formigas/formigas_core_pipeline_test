import 'package:formigas_core_pipeline_test/feature/counter/counter_controller.dart';
import 'package:formigas_core_pipeline_test/feature/counter/counter_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_controller_implementation.g.dart';

@riverpod
class CounterControllerImplementation extends _$CounterControllerImplementation
    implements CounterController {
  @override
  CounterModel build() => const CounterModel(count: 0);

  @override
  void increment() => state = state.copyWith(count: state.count + 1);

  @override
  void decrement() => state = state.copyWith(count: state.count - 1);
}
