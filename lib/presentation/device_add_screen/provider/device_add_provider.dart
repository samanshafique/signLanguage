import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/device_add_model.dart';

/// A provider class for the DeviceAddScreen.
///
/// This provider manages the state of the DeviceAddScreen, including the
/// current deviceAddModelObj
class DeviceAddProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  DeviceAddModel deviceAddModelObj = DeviceAddModel();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
  }
}
