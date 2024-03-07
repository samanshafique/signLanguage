import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/add_device_model.dart';

/// A provider class for the AddDeviceScreen.
///
/// This provider manages the state of the AddDeviceScreen, including the
/// current addDeviceModelObj
class AddDeviceProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController tenController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController unitController = TextEditingController();

  TextEditingController numberOfPhasesController = TextEditingController();

  AddDeviceModel addDeviceModelObj = AddDeviceModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    tenController.dispose();
    cityController.dispose();
    unitController.dispose();
    numberOfPhasesController.dispose();
  }
}
