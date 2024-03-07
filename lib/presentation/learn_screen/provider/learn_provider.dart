import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/learn_model.dart';

/// A provider class for the LearnScreen.
///
/// This provider manages the state of the LearnScreen, including the
/// current learnModelObj
class LearnProvider extends ChangeNotifier {
  LearnModel learnModelObj = LearnModel();

  @override
  void dispose() {
    super.dispose();
  }
}
