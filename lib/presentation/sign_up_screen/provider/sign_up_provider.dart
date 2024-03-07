import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/sign_up_model.dart';

/// A provider class for the SignUpScreen.
///
/// This provider manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpProvider extends ChangeNotifier {
  TextEditingController cityController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  SignUpModel signUpModelObj = SignUpModel();

  bool iconLinear = false;

  @override
  void dispose() {
    super.dispose();
    cityController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
    mobileNumberController.dispose();
  }

  void changeCheckBox1(bool value) {
    iconLinear = value;
    notifyListeners();
  }
}
