import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/welcome_screen_three_model.dart';

/// A provider class for the WelcomeScreenThreeScreen.
///
/// This provider manages the state of the WelcomeScreenThreeScreen, including the
/// current welcomeScreenThreeModelObj
class WelcomeScreenThreeProvider extends ChangeNotifier {
  WelcomeScreenThreeModel welcomeScreenThreeModelObj =
      WelcomeScreenThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
