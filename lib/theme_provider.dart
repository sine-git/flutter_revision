import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_revision/dark_mode.dart';
import 'package:flutter_revision/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _theme = lightMode;

  set theme(ThemeData themeData) {
    _theme = themeData;
    notifyListeners();
  }

  ThemeData get theme => _theme;

  switchTheme() {
    if (_theme == lightMode) {
      theme = darkMode;
    } else {
      theme = lightMode;
    }
  }
}
