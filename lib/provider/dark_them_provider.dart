import 'package:flutter/material.dart';

import '../services/dark_theme_prefs.dart';

// to keep listening to changes in dark theme
class DarkThemeProvider with ChangeNotifier {
  DarkThemePrefs darkThemePrefs = DarkThemePrefs();
  bool _darkTheme = false; // default value
  bool get darkTheme => _darkTheme;

  set setDarkTheme(bool value) {
    _darkTheme = value;
    darkThemePrefs.setDarkTheme(
        value); // to set the theme value changes in shared preferences
    notifyListeners();
  }
}
