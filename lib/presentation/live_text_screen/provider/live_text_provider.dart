import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/live_text_model.dart';

/// A provider class for the LiveTextScreen.
///
/// This provider manages the state of the LiveTextScreen, including the
/// current liveTextModelObj
class LiveTextProvider extends ChangeNotifier {
  LiveTextModel liveTextModelObj = LiveTextModel();

  @override
  void dispose() {
    super.dispose();
  }
}
