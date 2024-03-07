import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/login_in_model.dart';

/// A provider class for the LoginInScreen.
///
/// This provider manages the state of the LoginInScreen, including the
/// current loginInModelObj
class LoginInProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  LoginInModel loginInModelObj = LoginInModel();

  bool isShowPassword = true;

  bool keepmeloggedin = false;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changeCheckBox1(bool value) {
    keepmeloggedin = value;
    notifyListeners();
  }
}
