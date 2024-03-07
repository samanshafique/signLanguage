import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/otp1_model.dart';

/// A provider class for the Otp1Screen.
///
/// This provider manages the state of the Otp1Screen, including the
/// current otp1ModelObj
class Otp1Provider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  Otp1Model otp1ModelObj = Otp1Model();

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
