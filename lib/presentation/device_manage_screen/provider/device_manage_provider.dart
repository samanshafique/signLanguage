import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/device_manage_model.dart';

/// A provider class for the DeviceManageScreen.
///
/// This provider manages the state of the DeviceManageScreen, including the
/// current deviceManageModelObj
class DeviceManageProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  DeviceManageModel deviceManageModelObj = DeviceManageModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
