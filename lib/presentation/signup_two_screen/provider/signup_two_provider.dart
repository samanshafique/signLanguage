import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/signup_two_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';

/// A provider class for the SignupTwoScreen.
///
/// This provider manages the state of the SignupTwoScreen, including the
/// current signupTwoModelObj
class SignupTwoProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  SignupTwoModel signupTwoModelObj = SignupTwoModel();

  Country? selectedCountry;

  bool isShowPassword = true;

  bool isShowPassword1 = true;

  bool checkbox = false;

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }

  void changeCountry(Country value) {
    selectedCountry = value;
    notifyListeners();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changePasswordVisibility1() {
    isShowPassword1 = !isShowPassword1;
    notifyListeners();
  }

  void changeCheckBox1(bool value) {
    checkbox = value;
    notifyListeners();
  }
}
