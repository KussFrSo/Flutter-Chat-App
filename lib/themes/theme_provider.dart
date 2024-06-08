import 'package:chat_app/themes/dark_mode.dart';
import 'package:chat_app/themes/light_mode.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _selectedTheme = lightMode;

  ThemeData get getTheme => _selectedTheme;

  bool get isDarkMode => _selectedTheme == darkMode;

  void setTheme(ThemeData theme) {
    _selectedTheme = theme;
    notifyListeners();
  }

  void toggleTheme() {
    print("toggleTheme");
    _selectedTheme = _selectedTheme == darkMode ? lightMode : darkMode;
    notifyListeners();
  }
}
