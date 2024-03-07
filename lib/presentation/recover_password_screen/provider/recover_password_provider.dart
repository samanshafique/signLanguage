import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/recover_password_model.dart';

/// A provider class for the RecoverPasswordScreen.
///
/// This provider manages the state of the RecoverPasswordScreen, including the
/// current recoverPasswordModelObj
class RecoverPasswordProvider extends ChangeNotifier {
  RecoverPasswordModel recoverPasswordModelObj = RecoverPasswordModel();

  @override
  void dispose() {
    super.dispose();
  }
}
