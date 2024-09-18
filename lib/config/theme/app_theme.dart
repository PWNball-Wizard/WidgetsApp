import 'package:flutter/material.dart';

class AppTheme {
  final List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.indigo,
  ];

  ThemeData theme(int selectedColor) {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colors[selectedColor],
    );
  }
}
