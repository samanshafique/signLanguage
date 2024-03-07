import 'dart:developer';

import 'package:saeed_s_application3/core/utils/validation_functions.dart';
import 'package:saeed_s_application3/widgets/custom_text_form_field.dart';
import 'package:saeed_s_application3/widgets/custom_switch.dart';
import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/login_provider.dart';

//!--------------
// Email : abcd@gmail.com
// Password :  123456
//!--------------

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoginScreenState createState() => LoginScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      child: LoginScreen(),
    );
  }
}

class LoginScreenState extends State<LoginScreen> {
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
            child: Consumer<LoginProvider>(
                builder: (context, loginProvider, child) {
              return Form(
                key: _formKey,
                child: SizedBox(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Container(
                        height: 20.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onError,
                        ),
                      ),
                      SizedBox(height: 70.v),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: appTheme.lightBlueA70001,
                            width: 9.h,
                          ),
                          borderRadius: BorderRadiusStyle.circleBorder50,
                        ),
                        child: Container(
                          height: 100.adaptSize,
                          width: 100.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 7.h,
                            vertical: 20.v,
                          ),
                          decoration:
                              AppDecoration.outlineLightblueA70001.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder50,
                          ),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: 54.h,
                                  margin: EdgeInsets.only(right: 1.h),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lbl_sign".tr,
                                          style: CustomTextStyles
                                              .titleMediumff6e6e6e,
                                        ),
                                        TextSpan(
                                          text: "lbl_vox".tr,
                                          style: CustomTextStyles
                                              .titleMediumff0073f1,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgContrast,
                                height: 40.v,
                                width: 18.h,
                                alignment: Alignment.centerLeft,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 50,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 203.h,
                          margin: EdgeInsets.only(left: 16.h),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_welcome_to_sign".tr,
                                  style: CustomTextStyles.headlineSmallff121212,
                                ),
                                TextSpan(
                                  text: "lbl_vox".tr,
                                  style: CustomTextStyles.headlineSmallff007aff,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: CustomTextFormField(
                          controller: loginProvider.emailController,
                          hintText: "lbl_email".tr,
                          hintStyle: CustomTextStyles.bodyMediumDubai,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(16.h, 13.v, 14.h, 13.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgLock,
                              height: 18.v,
                              width: 23.h,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 44.v,
                          ),
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_email".tr;
                            }
                            return null;
                          },
                          contentPadding: EdgeInsets.only(
                            top: 10.v,
                            right: 30.h,
                            bottom: 10.v,
                          ),
                        ),
                      ),
                      SizedBox(height: 22.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: CustomTextFormField(
                          controller: loginProvider.passwordController,
                          hintText: "lbl_password".tr,
                          hintStyle: CustomTextStyles.bodyMediumDubai,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: InkWell(
                            onTap: () {
                              loginProvider.changePasswordVisibility();
                            },
                            child: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 10.v, 25.h, 10.v),
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
                          obscureText: loginProvider.isShowPassword,
                          contentPadding: EdgeInsets.only(
                            left: 30.h,
                            top: 10.v,
                            bottom: 10.v,
                          ),
                        ),
                      ),
                      SizedBox(height: 13.v),
                      _buildContrast(context),
                      SizedBox(height: 35.v),
                      CustomElevatedButton(
                        text: "lbl_login2".tr,
                        onPressed: () {
                          if (loginProvider.emailController.text ==
                                  'abcd@gmail.com' &&
                              loginProvider.passwordController.text ==
                                  '123456') {
                            NavigatorService.popAndPushNamed(
                              AppRoutes.homeContainerScreen,
                            );
                          }
                        },
                        margin: EdgeInsets.symmetric(horizontal: 16.h),
                      ),
                      SizedBox(height: 85.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 83.h),
                          child: Row(
                            children: [
                              Text(
                                "msg_don_t_have_an_account".tr,
                                style: CustomTextStyles.bodyLargeDubaiGray900,
                              ),
                              GestureDetector(
                                onTap: () {
                                  NavigatorService.pushNamed(
                                    AppRoutes.signupTwoScreen,
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "lbl_signup".tr,
                                        style: CustomTextStyles
                                            .bodyLargeDubaiLightblueA700,
                                      ),
                                      SizedBox(height: 2.v),
                                      Container(
                                        height: 1.v,
                                        width: 45.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.lightBlueA700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 49,
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContrast(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Selector<LoginProvider, bool?>(
            selector: (
              context,
              provider,
            ) =>
                provider.isSelectedSwitch,
            builder: (context, isSelectedSwitch, child) {
              return CustomSwitch(
                margin: EdgeInsets.symmetric(vertical: 5.v),
                value: isSelectedSwitch,
                onChange: (value) {
                  context.read<LoginProvider>().changeSwitchBox1(value);
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Text(
              "lbl_remember_me".tr,
              style: CustomTextStyles.bodyMediumDubaiPrimary,
            ),
          ),
          Spacer(),
          Text(
            "msg_forget_password".tr,
            style: CustomTextStyles.bodyMediumDubaiLightblueA700,
          ),
        ],
      ),
    );
  }
}
