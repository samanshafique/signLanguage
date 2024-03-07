import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/forget_password_model.dart';

/// A provider class for the ForgetPasswordScreen.
///
/// This provider manages the state of the ForgetPasswordScreen, including the
/// current forgetPasswordModelObj
class ForgetPasswordProvider extends ChangeNotifier {
  ForgetPasswordModel forgetPasswordModelObj = ForgetPasswordModel();

  String resetPasswordVia = "";

  @override
  void dispose() {
    super.dispose();
  }

  void changeRadioButton1(String value) {
    resetPasswordVia = value;
    notifyListeners();
  }
}
