import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/help_faq_model.dart';

/// A provider class for the HelpFaqScreen.
///
/// This provider manages the state of the HelpFaqScreen, including the
/// current helpFaqModelObj
class HelpFaqProvider extends ChangeNotifier {
  TextEditingController descriptionController = TextEditingController();

  HelpFaqModel helpFaqModelObj = HelpFaqModel();

  @override
  void dispose() {
    super.dispose();
    descriptionController.dispose();
  }
}
