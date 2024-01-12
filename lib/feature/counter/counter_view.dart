import 'package:flutter/material.dart';
import 'package:formigas_core_pipeline_test/feature/counter/counter_controller.dart';
import 'package:formigas_core_pipeline_test/feature/counter/counter_model.dart';

class CounterView extends StatelessWidget {
  const CounterView({
    required CounterController controller,
    required CounterModel model,
    super.key,
  })  : _controller = controller,
        _model = model;
  final CounterController _controller;
  final CounterModel _model;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Flutter Demo Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${_model.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _controller.increment,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      );
}
