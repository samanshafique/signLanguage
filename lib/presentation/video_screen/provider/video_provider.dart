import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/video_model.dart';

/// A provider class for the VideoScreen.
///
/// This provider manages the state of the VideoScreen, including the
/// current videoModelObj
class VideoProvider extends ChangeNotifier {
  VideoModel videoModelObj = VideoModel();

  @override
  void dispose() {
    super.dispose();
  }
}
