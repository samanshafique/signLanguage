import 'package:saeed_s_application3/widgets/custom_icon_button.dart';
import 'package:saeed_s_application3/widgets/custom_text_form_field.dart';
import 'package:saeed_s_application3/core/utils/validation_functions.dart';
import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'models/reset_password_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/reset_password_provider.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ResetPasswordScreenState createState() => ResetPasswordScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ResetPasswordProvider(),
      child: ResetPasswordScreen(),
    );
  }
}

class ResetPasswordScreenState extends State<ResetPasswordScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    Container(
                      height: 20.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onError,
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: CustomIconButton(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                padding: EdgeInsets.all(8.h),
                                decoration:
                                    IconButtonStyleHelper.fillLightBlueA,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowDown,
                                ),
                              ),
                            ),
                            Container(
                              width: 159.h,
                              margin: EdgeInsets.only(left: 61.h),
                              child: Text(
                                "lbl_reset_password".tr,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.headlineSmall!.copyWith(
                                  height: 1.33,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "msg_please_type_something".tr,
                          style: CustomTextStyles.bodyMediumPoppinsGray60002_1,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    _buildEmail(context),
                    SizedBox(height: 9.v),
                    _buildEmail1(context),
                    SizedBox(height: 24.v),
                    CustomElevatedButton(
                      text: "lbl_submit".tr,
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_new_password".tr,
            style: CustomTextStyles.titleSmallDubaiGray900,
          ),
          Consumer<ResetPasswordProvider>(
            builder: (context, provider, child) {
              return CustomTextFormField(
                controller: provider.newpasswordController,
                hintText: "lbl_1239456789".tr,
                hintStyle: CustomTextStyles.titleSmallDubaiGray40003,
                textInputType: TextInputType.visiblePassword,
                suffix: InkWell(
                  onTap: () {
                    provider.changePasswordVisibility();
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEye,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 44.v,
                ),
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                obscureText: provider.isShowPassword,
                contentPadding: EdgeInsets.only(
                  left: 16.h,
                  top: 10.v,
                  bottom: 10.v,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_confirm_password".tr,
            style: CustomTextStyles.titleSmallDubaiGray900,
          ),
          Consumer<ResetPasswordProvider>(
            builder: (context, provider, child) {
              return CustomTextFormField(
                controller: provider.confirmpasswordController,
                hintText: "lbl".tr,
                hintStyle: CustomTextStyles.titleSmallDubaiGray40003,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                suffix: InkWell(
                  onTap: () {
                    provider.changePasswordVisibility1();
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 10.v, 16.h, 10.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSettings,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 44.v,
                ),
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                obscureText: provider.isShowPassword1,
                contentPadding: EdgeInsets.only(
                  left: 16.h,
                  top: 10.v,
                  bottom: 10.v,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
