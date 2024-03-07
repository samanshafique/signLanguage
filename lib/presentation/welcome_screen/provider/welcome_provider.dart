import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/welcome_model.dart';

/// A provider class for the WelcomeScreen.
///
/// This provider manages the state of the WelcomeScreen, including the
/// current welcomeModelObj
class WelcomeProvider extends ChangeNotifier {
  WelcomeModel welcomeModelObj = WelcomeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
