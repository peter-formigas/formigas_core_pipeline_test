import 'package:flutter/material.dart';
import 'package:formigas_core_pipeline_test/common/color_scheme.dart';
import 'package:formigas_core_pipeline_test/common/text_style.dart';

class CustomTheme {
  ThemeData get dark => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorScheme: darkColorScheme,
        textTheme: textTheme,
      );

  ThemeData get light => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorScheme: lightColorScheme,
        textTheme: textTheme,
      );
}
