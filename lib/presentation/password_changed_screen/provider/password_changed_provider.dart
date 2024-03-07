import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/password_changed_model.dart';

/// A provider class for the PasswordChangedScreen.
///
/// This provider manages the state of the PasswordChangedScreen, including the
/// current passwordChangedModelObj
class PasswordChangedProvider extends ChangeNotifier {
  PasswordChangedModel passwordChangedModelObj = PasswordChangedModel();

  @override
  void dispose() {
    super.dispose();
  }
}
