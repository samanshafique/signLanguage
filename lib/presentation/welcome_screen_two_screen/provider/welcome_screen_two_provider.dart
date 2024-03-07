import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/welcome_screen_two_model.dart';

/// A provider class for the WelcomeScreenTwoScreen.
///
/// This provider manages the state of the WelcomeScreenTwoScreen, including the
/// current welcomeScreenTwoModelObj
class WelcomeScreenTwoProvider extends ChangeNotifier {
  WelcomeScreenTwoModel welcomeScreenTwoModelObj = WelcomeScreenTwoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
