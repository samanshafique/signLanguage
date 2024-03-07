import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/otp_screen_one_model.dart';

/// A provider class for the OtpScreenOneScreen.
///
/// This provider manages the state of the OtpScreenOneScreen, including the
/// current otpScreenOneModelObj
class OtpScreenOneProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  OtpScreenOneModel otpScreenOneModelObj = OtpScreenOneModel();

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
