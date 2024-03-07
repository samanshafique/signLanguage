import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/support_model.dart';

/// A provider class for the SupportScreen.
///
/// This provider manages the state of the SupportScreen, including the
/// current supportModelObj
class SupportProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController inputController = TextEditingController();

  TextEditingController eightyFourController = TextEditingController();

  SupportModel supportModelObj = SupportModel();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    inputController.dispose();
    eightyFourController.dispose();
  }
}
