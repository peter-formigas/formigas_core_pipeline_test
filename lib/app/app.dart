import 'package:flutter/material.dart';
import 'package:formigas_core_pipeline_test/common/custom_themes.dart';
import 'package:formigas_core_pipeline_test/feature/counter/counter_controller.dart';
import 'package:formigas_core_pipeline_test/feature/counter/counter_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FormigasCorePipelineTest App',
      theme: CustomTheme().light,
      darkTheme: CustomTheme().dark,
      home: CounterView(controller: CounterControllerImplementation()),
    );
  }
}
