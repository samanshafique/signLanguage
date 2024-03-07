import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/saved_translation_model.dart';

/// A provider class for the SavedTranslationScreen.
///
/// This provider manages the state of the SavedTranslationScreen, including the
/// current savedTranslationModelObj
class SavedTranslationProvider extends ChangeNotifier {
  SavedTranslationModel savedTranslationModelObj = SavedTranslationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
