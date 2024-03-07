import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/add_device_one_model.dart';

/// A provider class for the AddDeviceOneScreen.
///
/// This provider manages the state of the AddDeviceOneScreen, including the
/// current addDeviceOneModelObj
class AddDeviceOneProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController thirtyNineController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController unitController = TextEditingController();

  TextEditingController numberOfPhasesController = TextEditingController();

  AddDeviceOneModel addDeviceOneModelObj = AddDeviceOneModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    thirtyNineController.dispose();
    cityController.dispose();
    unitController.dispose();
    numberOfPhasesController.dispose();
  }
}
