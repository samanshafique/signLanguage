import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/splash1_model.dart';

/// A provider class for the Splash1Screen.
///
/// This provider manages the state of the Splash1Screen, including the
/// current splash1ModelObj
class Splash1Provider extends ChangeNotifier {
  Splash1Model splash1ModelObj = Splash1Model();

  @override
  void dispose() {
    super.dispose();
  }
}
