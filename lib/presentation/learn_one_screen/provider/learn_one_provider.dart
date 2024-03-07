import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/learn_one_model.dart';

/// A provider class for the LearnOneScreen.
///
/// This provider manages the state of the LearnOneScreen, including the
/// current learnOneModelObj
class LearnOneProvider extends ChangeNotifier {
  LearnOneModel learnOneModelObj = LearnOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
