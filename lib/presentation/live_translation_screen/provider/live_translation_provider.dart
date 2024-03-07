import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/live_translation_model.dart';

/// A provider class for the LiveTranslationScreen.
///
/// This provider manages the state of the LiveTranslationScreen, including the
/// current liveTranslationModelObj
class LiveTranslationProvider extends ChangeNotifier {
  LiveTranslationModel liveTranslationModelObj = LiveTranslationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
