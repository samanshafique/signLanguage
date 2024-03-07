import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/language_model.dart';

/// A provider class for the LanguageScreen.
///
/// This provider manages the state of the LanguageScreen, including the
/// current languageModelObj
class LanguageProvider extends ChangeNotifier {
  LanguageModel languageModelObj = LanguageModel();

  @override
  void dispose() {
    super.dispose();
  }
}
