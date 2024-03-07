import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/signup_email_model.dart';

/// A provider class for the SignupEmailScreen.
///
/// This provider manages the state of the SignupEmailScreen, including the
/// current signupEmailModelObj
class SignupEmailProvider extends ChangeNotifier {
  SignupEmailModel signupEmailModelObj = SignupEmailModel();

  @override
  void dispose() {
    super.dispose();
  }
}
