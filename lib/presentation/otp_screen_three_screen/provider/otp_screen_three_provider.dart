import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/otp_screen_three_model.dart';

/// A provider class for the OtpScreenThreeScreen.
///
/// This provider manages the state of the OtpScreenThreeScreen, including the
/// current otpScreenThreeModelObj
class OtpScreenThreeProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  OtpScreenThreeModel otpScreenThreeModelObj = OtpScreenThreeModel();

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
