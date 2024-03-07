import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/query_successfully_model.dart';

/// A provider class for the QuerySuccessfullyScreen.
///
/// This provider manages the state of the QuerySuccessfullyScreen, including the
/// current querySuccessfullyModelObj
class QuerySuccessfullyProvider extends ChangeNotifier {
  QuerySuccessfullyModel querySuccessfullyModelObj = QuerySuccessfullyModel();

  @override
  void dispose() {
    super.dispose();
  }
}
