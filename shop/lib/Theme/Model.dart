import 'package:flutter/material.dart';

class ThemeModel extends ChangeNotifier {
  bool darkTheme = false;
  Color _current = Colors.white;
  Color _fontColor;
  void colorUpdate() {
    _current = darkTheme ? Colors.white : Colors.black;
    _fontColor= darkTheme ? Colors.black : Colors.white;
    darkTheme = !darkTheme;
    notifyListeners();
  }

  Color get getColor => _current;

  Color get getFontColor => _fontColor;
}



