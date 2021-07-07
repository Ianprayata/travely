import 'package:flutter/material.dart';

class ThemeDataProvider with ChangeNotifier {
  bool _isDark = false;

  bool get darke => _isDark;

  set themevalue(bool value) {
    _isDark = value;
    notifyListeners();
  }

  Color get value => (_isDark == true) ? Color(0xff1A1A1A) : Color(0xffFFFFFF);
  
}
