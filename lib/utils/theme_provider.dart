import 'package:flutter/material.dart';
import 'package:portfolio/utils/color_palette.dart';
bool isDarkMode = false;
class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme(){
    if (_themeData == lightMode){
      themeData = darkMode;
      isDarkMode = true;
    } else {
      themeData = lightMode;
      isDarkMode = false;
    }
  }
}