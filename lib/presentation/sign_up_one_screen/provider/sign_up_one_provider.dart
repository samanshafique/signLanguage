import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/sign_up_one_model.dart';

/// A provider class for the SignUpOneScreen.
///
/// This provider manages the state of the SignUpOneScreen, including the
/// current signUpOneModelObj
class SignUpOneProvider extends ChangeNotifier {
  TextEditingController cityController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  SignUpOneModel signUpOneModelObj = SignUpOneModel();

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
