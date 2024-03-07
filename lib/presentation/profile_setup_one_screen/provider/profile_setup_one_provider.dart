import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/profile_setup_one_model.dart';

/// A provider class for the ProfileSetupOneScreen.
///
/// This provider manages the state of the ProfileSetupOneScreen, including the
/// current profileSetupOneModelObj
class ProfileSetupOneProvider extends ChangeNotifier {
  ProfileSetupOneModel profileSetupOneModelObj = ProfileSetupOneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
