import 'package:saeed_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:saeed_s_application3/core/utils/validation_functions.dart';
import 'package:saeed_s_application3/widgets/custom_text_form_field.dart';
import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'models/add_device_one_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/add_device_one_provider.dart';

class AddDeviceOneScreen extends StatefulWidget {
  const AddDeviceOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AddDeviceOneScreenState createState() => AddDeviceOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddDeviceOneProvider(),
      child: AddDeviceOneScreen(),
    );
  }
}

class AddDeviceOneScreenState extends State<AddDeviceOneScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 17.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                children: [
                  _buildName(context),
                  SizedBox(height: 16.v),
                  _buildThirtyNine(context),
                  SizedBox(height: 16.v),
                  _buildCity(context),
                  SizedBox(height: 16.v),
                  _buildUnit(context),
                  SizedBox(height: 16.v),
                  _buildNumberOfPhases(context),
                  SizedBox(height: 135.v),
                  _buildContinue(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 62.v,
      leadingWidth: 66.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgArrowRight,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 2.v,
          bottom: 3.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_add_devices".tr,
        margin: EdgeInsets.only(left: 31.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Selector<AddDeviceOneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.nameController,
      builder: (context, nameController, child) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "lbl_device_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.outlineGrayTL15,
          fillColor: appTheme.whiteA700,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildThirtyNine(BuildContext context) {
    return Selector<AddDeviceOneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.thirtyNineController,
      builder: (context, thirtyNineController, child) {
        return CustomTextFormField(
          controller: thirtyNineController,
          hintText: "msg_device_serial_number".tr,
          textInputType: TextInputType.number,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return Selector<AddDeviceOneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.cityController,
      builder: (context, cityController, child) {
        return CustomTextFormField(
          controller: cityController,
          hintText: "msg_electricity_provider".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildUnit(BuildContext context) {
    return Selector<AddDeviceOneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.unitController,
      builder: (context, unitController, child) {
        return CustomTextFormField(
          controller: unitController,
          hintText: "lbl_unit".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNumberOfPhases(BuildContext context) {
    return Selector<AddDeviceOneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.numberOfPhasesController,
      builder: (context, numberOfPhasesController, child) {
        return CustomTextFormField(
          controller: numberOfPhasesController,
          hintText: "msg_number_of_phases".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.number,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      height: 64.v,
      text: "lbl_continue".tr,
      buttonStyle: CustomButtonStyles.outlinePrimaryTL201,
      buttonTextStyle: theme.textTheme.titleLarge!,
    );
  }
}
