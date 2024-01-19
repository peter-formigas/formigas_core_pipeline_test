import 'package:pipeline_dev/common/color_scheme.dart';
import 'package:pipeline_dev/common/text_style.dart';
import 'package:flutter/material.dart';

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
