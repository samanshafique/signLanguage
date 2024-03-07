import 'package:saeed_s_application3/core/utils/validation_functions.dart';
import 'package:saeed_s_application3/widgets/custom_text_form_field.dart';
import 'package:saeed_s_application3/widgets/custom_checkbox_button.dart';
import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'models/login_in_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/login_in_provider.dart';

class LoginInScreen extends StatefulWidget {
  const LoginInScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoginInScreenState createState() => LoginInScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginInProvider(),
      child: LoginInScreen(),
    );
  }
}

class LoginInScreenState extends State<LoginInScreen> {
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
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: 430.h,
            child: Column(
              children: [
                SizedBox(height: 18.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 85.v),
                      padding: EdgeInsets.symmetric(horizontal: 15.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgElectricLogoAi02186x130,
                            height: 186.v,
                            width: 130.h,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 40.v),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_sign_in2".tr,
                              style: theme.textTheme.displaySmall,
                            ),
                          ),
                          SizedBox(height: 7.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "msg_enter_your_email".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 43.v),
                          _buildSeparator(context),
                          SizedBox(height: 24.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_email".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  TextSpan(
                                    text: "lbl2".tr,
                                    style: CustomTextStyles.titleSmallff479037,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Selector<LoginInProvider,
                                TextEditingController?>(
                              selector: (
                                context,
                                provider,
                              ) =>
                                  provider.emailController,
                              builder: (context, emailController, child) {
                                return CustomTextFormField(
                                  controller: emailController,
                                  hintText: "msg_mail_simmmple_com".tr,
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_email"
                                          .tr;
                                    }
                                    return null;
                                  },
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 21.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_password".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  TextSpan(
                                    text: "lbl2".tr,
                                    style: CustomTextStyles.titleSmallff479037,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Consumer<LoginInProvider>(
                              builder: (context, provider, child) {
                                return CustomTextFormField(
                                  controller: provider.passwordController,
                                  hintText: "msg_min_8_characters".tr,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: InkWell(
                                    onTap: () {
                                      provider.changePasswordVisibility();
                                    },
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 17.v, 17.h, 13.v),
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRemoveredeye,
                                        height: 20.v,
                                        width: 19.h,
                                      ),
                                    ),
                                  ),
                                  suffixConstraints: BoxConstraints(
                                    maxHeight: 50.v,
                                  ),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_password"
                                          .tr;
                                    }
                                    return null;
                                  },
                                  obscureText: provider.isShowPassword,
                                  contentPadding: EdgeInsets.only(
                                    left: 24.h,
                                    top: 15.v,
                                    bottom: 15.v,
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 7.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "msg_forget_password2".tr,
                              style: CustomTextStyles.titleSmallGreen700_1,
                            ),
                          ),
                          SizedBox(height: 27.v),
                          _buildKeepmeloggedin(context),
                          SizedBox(height: 23.v),
                          CustomElevatedButton(
                            height: 64.v,
                            text: "lbl_sign_in".tr,
                            margin: EdgeInsets.only(left: 1.h),
                            buttonStyle: CustomButtonStyles.outlinePrimaryTL201,
                            buttonTextStyle: theme.textTheme.titleLarge!,
                          ),
                          SizedBox(height: 33.v),
                          Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text(
                                    "msg_don_t_have_an_account2".tr,
                                    style: CustomTextStyles.bodyMediumPrimary,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text(
                                    "lbl_sign_up2".tr,
                                    style: CustomTextStyles.titleSmallGreen700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeparator(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 8.v,
            ),
            child: SizedBox(
              width: 182.h,
              child: Divider(),
            ),
          ),
          Text(
            "lbl_or2".tr,
            style: CustomTextStyles.titleSmallGray40001,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 8.v,
            ),
            child: SizedBox(
              width: 171.h,
              child: Divider(),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildKeepmeloggedin(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Selector<LoginInProvider, bool?>(
        selector: (
          context,
          provider,
        ) =>
            provider.keepmeloggedin,
        builder: (context, keepmeloggedin, child) {
          return CustomCheckboxButton(
            text: "msg_keep_me_logged_in".tr,
            value: keepmeloggedin,
            onChange: (value) {
              context.read<LoginInProvider>().changeCheckBox1(value);
            },
          );
        },
      ),
    );
  }
}
