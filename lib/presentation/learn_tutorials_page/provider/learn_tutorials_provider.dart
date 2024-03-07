import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/learn_tutorials_model.dart';
import '../models/title_item_model.dart';
import '../models/wvvmdhwfl_item_model.dart';

/// A provider class for the LearnTutorialsPage.
///
/// This provider manages the state of the LearnTutorialsPage, including the
/// current learnTutorialsModelObj
class LearnTutorialsProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  LearnTutorialsModel learnTutorialsModelObj = LearnTutorialsModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
