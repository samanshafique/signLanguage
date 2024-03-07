import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/live_text_speech_one_model.dart';

/// A provider class for the LiveTextSpeechOneScreen.
///
/// This provider manages the state of the LiveTextSpeechOneScreen, including the
/// current liveTextSpeechOneModelObj
class LiveTextSpeechOneProvider extends ChangeNotifier {
  LiveTextSpeechOneModel liveTextSpeechOneModelObj = LiveTextSpeechOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
