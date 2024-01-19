import 'package:pipeline_dev/common/custom_themes.dart';
import 'package:pipeline_dev/feature/counter/counter_controller.dart';
import 'package:pipeline_dev/feature/counter/counter_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PipelineDev App',
      theme: CustomTheme().light,
      darkTheme: CustomTheme().dark,
      home: CounterView(controller: CounterControllerImplementation()),
    );
  }
}
