import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saeed_s_application3/core/utils/pref_utils.dart';

class ThemeProvider extends ChangeNotifier {
  themeChange(String themeType) async {
    PrefUtils().setThemeData(themeType);
    notifyListeners();
  }
}
