import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/profile_setup_model.dart';

/// A provider class for the ProfileSetupScreen.
///
/// This provider manages the state of the ProfileSetupScreen, including the
/// current profileSetupModelObj
class ProfileSetupProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController group105Controller = TextEditingController();

  ProfileSetupModel profileSetupModelObj = ProfileSetupModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    group105Controller.dispose();
  }

  onSelected(dynamic value) {
    for (var element in profileSetupModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
