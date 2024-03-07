import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/device_manage_one_model.dart';

/// A provider class for the DeviceManageOneScreen.
///
/// This provider manages the state of the DeviceManageOneScreen, including the
/// current deviceManageOneModelObj
class DeviceManageOneProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  DeviceManageOneModel deviceManageOneModelObj = DeviceManageOneModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
