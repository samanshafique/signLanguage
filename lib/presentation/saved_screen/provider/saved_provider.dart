import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/saved_model.dart';

/// A provider class for the SavedScreen.
///
/// This provider manages the state of the SavedScreen, including the
/// current savedModelObj
class SavedProvider extends ChangeNotifier {
  SavedModel savedModelObj = SavedModel();

  @override
  void dispose() {
    super.dispose();
  }
}
