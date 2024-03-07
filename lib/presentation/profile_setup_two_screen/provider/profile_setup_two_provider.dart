import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/profile_setup_two_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';

/// A provider class for the ProfileSetupTwoScreen.
///
/// This provider manages the state of the ProfileSetupTwoScreen, including the
/// current profileSetupTwoModelObj
class ProfileSetupTwoProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController fortyTwoController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  ProfileSetupTwoModel profileSetupTwoModelObj = ProfileSetupTwoModel();

  Country? selectedCountry;

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    fortyTwoController.dispose();
    phoneNumberController.dispose();
    locationController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in profileSetupTwoModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  void changeCountry(Country value) {
    selectedCountry = value;
    notifyListeners();
  }
}
