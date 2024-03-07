import 'package:saeed_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:saeed_s_application3/core/utils/validation_functions.dart';
import 'package:saeed_s_application3/widgets/custom_text_form_field.dart';
import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'models/device_add_one_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/device_add_one_provider.dart';

class DeviceAddOneScreen extends StatefulWidget {
  const DeviceAddOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DeviceAddOneScreenState createState() => DeviceAddOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DeviceAddOneProvider(),
      child: DeviceAddOneScreen(),
    );
  }
}

class DeviceAddOneScreenState extends State<DeviceAddOneScreen> {
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
                  Selector<DeviceAddOneProvider, TextEditingController?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider.nameController,
                    builder: (context, nameController, child) {
                      return CustomTextFormField(
                        controller: nameController,
                        hintText: "msg_name_device_1_device".tr,
                        textInputAction: TextInputAction.done,
                        suffix: Container(
                          padding: EdgeInsets.all(10.h),
                          margin: EdgeInsets.fromLTRB(30.h, 7.v, 12.h, 7.v),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primaryContainer
                                .withOpacity(0.05),
                            borderRadius: BorderRadius.circular(
                              22.h,
                            ),
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgClosePrimarycontainer,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 58.v,
                        ),
                        validator: (value) {
                          if (!isText(value)) {
                            return "err_msg_please_enter_valid_text".tr;
                          }
                          return null;
                        },
                        contentPadding: EdgeInsets.only(
                          left: 24.h,
                          top: 13.v,
                          bottom: 13.v,
                        ),
                        borderDecoration:
                            TextFormFieldStyleHelper.outlineGrayTL10,
                        fillColor: appTheme.whiteA700,
                      );
                    },
                  ),
                  SizedBox(height: 61.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgPngegg1,
                    height: 307.v,
                    width: 390.h,
                  ),
                  SizedBox(height: 23.v),
                  CustomElevatedButton(
                    height: 64.v,
                    text: "lbl_continue".tr,
                    buttonStyle: CustomButtonStyles.outlinePrimaryTL201,
                    buttonTextStyle: theme.textTheme.titleLarge!,
                  ),
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
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_manage_devices".tr,
      ),
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgPlusLightGreen500,
          margin: EdgeInsets.fromLTRB(22.h, 15.v, 22.h, 16.v),
        ),
      ],
    );
  }
}
