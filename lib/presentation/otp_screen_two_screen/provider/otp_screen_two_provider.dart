import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/otp_screen_two_model.dart';

/// A provider class for the OtpScreenTwoScreen.
///
/// This provider manages the state of the OtpScreenTwoScreen, including the
/// current otpScreenTwoModelObj
class OtpScreenTwoProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  OtpScreenTwoModel otpScreenTwoModelObj = OtpScreenTwoModel();

  String radioGroup = "";

  @override
  void dispose() {
    super.dispose();
  }

  void changeRadioButton1(String value) {
    radioGroup = value;
    notifyListeners();
  }
}
