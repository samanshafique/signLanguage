import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/registered_model.dart';

/// A provider class for the RegisteredScreen.
///
/// This provider manages the state of the RegisteredScreen, including the
/// current registeredModelObj
class RegisteredProvider extends ChangeNotifier {
  RegisteredModel registeredModelObj = RegisteredModel();

  @override
  void dispose() {
    super.dispose();
  }
}
