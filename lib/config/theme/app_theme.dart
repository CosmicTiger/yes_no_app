import 'package:flutter/material.dart';

/// NOTE: This is a sample class to demonstrate how to create a custom theme.
/// In terms of scoping of variables when you have as prefix an underscore (_variableName)
/// it means that this variable is private to this file.
/// If you want to use this variable in another file you should remove the underscore.
/// In this case, the variable _customColor is private to this file.
/// If you want to use it in another file you should remove the underscore.

const Color _customColor = Color(0xFF49149F);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length,
            'selectedColor must be between 0 and ${_colorThemes.length - 1}');

  /// NOTE: Controlled error message taking profit of assert messages.

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
