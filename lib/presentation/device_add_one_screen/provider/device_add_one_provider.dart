import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/device_add_one_model.dart';

/// A provider class for the DeviceAddOneScreen.
///
/// This provider manages the state of the DeviceAddOneScreen, including the
/// current deviceAddOneModelObj
class DeviceAddOneProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  DeviceAddOneModel deviceAddOneModelObj = DeviceAddOneModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
  }
}
