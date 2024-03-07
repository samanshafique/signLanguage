import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/login_in_one_model.dart';

/// A provider class for the LoginInOneScreen.
///
/// This provider manages the state of the LoginInOneScreen, including the
/// current loginInOneModelObj
class LoginInOneProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  LoginInOneModel loginInOneModelObj = LoginInOneModel();

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
