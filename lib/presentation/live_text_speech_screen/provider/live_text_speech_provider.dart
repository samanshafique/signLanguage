import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/live_text_speech_model.dart';

/// A provider class for the LiveTextSpeechScreen.
///
/// This provider manages the state of the LiveTextSpeechScreen, including the
/// current liveTextSpeechModelObj
class LiveTextSpeechProvider extends ChangeNotifier {
  LiveTextSpeechModel liveTextSpeechModelObj = LiveTextSpeechModel();

  @override
  void dispose() {
    super.dispose();
  }
}
