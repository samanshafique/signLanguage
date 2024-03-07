import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/welcome_screen_one_model.dart';

/// A provider class for the WelcomeScreenOneScreen.
///
/// This provider manages the state of the WelcomeScreenOneScreen, including the
/// current welcomeScreenOneModelObj
class WelcomeScreenOneProvider extends ChangeNotifier {
  WelcomeScreenOneModel welcomeScreenOneModelObj = WelcomeScreenOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
