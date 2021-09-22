import 'package:flutter/material.dart';

import 'package:bloc_pattern/bloc_pattern.dart';

class BlocTheme extends BlocBase {
  bool themeDark = true;
  ThemeMode mode = ThemeMode.dark;

  void setThemeDark(bool value) {
    if (themeDark != value) {
      themeDark = value;
      if(mode == ThemeMode.dark)
        mode = ThemeMode.light;
      else
        mode = ThemeMode.dark;
      notifyListeners();
    }
  }
}
