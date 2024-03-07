import 'package:saeed_s_application3/core/utils/validation_functions.dart';
import 'package:saeed_s_application3/widgets/custom_text_form_field.dart';
import 'package:saeed_s_application3/widgets/custom_checkbox_button.dart';
import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'models/sign_up_one_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/sign_up_one_provider.dart';

class SignUpOneScreen extends StatefulWidget {
  const SignUpOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignUpOneScreenState createState() => SignUpOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUpOneProvider(),
      child: SignUpOneScreen(),
    );
  }
}

class SignUpOneScreenState extends State<SignUpOneScreen> {
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
                      margin: EdgeInsets.only(bottom: 175.v),
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgElectricLogoAi02129x91,
                            height: 129.v,
                            width: 91.h,
                          ),
                          SizedBox(height: 7.v),
                          Text(
                            "lbl_sign_up2".tr,
                            style: theme.textTheme.displaySmall,
                          ),
                          SizedBox(height: 7.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "msg_sign_up_to_track2".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 12.v),
                          _buildCity(context),
                          SizedBox(height: 12.v),
                          _buildPassword(context),
                          SizedBox(height: 12.v),
                          _buildConfirmpassword(context),
                          SizedBox(height: 12.v),
                          _buildMobileNumber(context),
                          SizedBox(height: 26.v),
                          _buildIconLinear(context),
                          SizedBox(height: 69.v),
                          _buildSignUp(context),
                          SizedBox(height: 35.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "msg_al_ready_have_an2".tr,
                                style: CustomTextStyles.bodyMediumPrimary,
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
  Widget _buildCity(BuildContext context) {
    return Selector<SignUpOneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.cityController,
      builder: (context, cityController, child) {
        return CustomTextFormField(
          controller: cityController,
          hintText: "lbl_full_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Selector<SignUpOneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.passwordController,
      builder: (context, passwordController, child) {
        return CustomTextFormField(
          controller: passwordController,
          hintText: "lbl_password".tr,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Selector<SignUpOneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.confirmpasswordController,
      builder: (context, confirmpasswordController, child) {
        return CustomTextFormField(
          controller: confirmpasswordController,
          hintText: "msg_confirm_password2".tr,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMobileNumber(BuildContext context) {
    return Selector<SignUpOneProvider, TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.mobileNumberController,
      builder: (context, mobileNumberController, child) {
        return CustomTextFormField(
          controller: mobileNumberController,
          hintText: "msg_email_mobile_number".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildIconLinear(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Selector<SignUpOneProvider, bool?>(
        selector: (
          context,
          provider,
        ) =>
            provider.iconLinear,
        builder: (context, iconLinear, child) {
          return CustomCheckboxButton(
            alignment: Alignment.centerLeft,
            text: "msg_i_agree_to_term".tr,
            value: iconLinear,
            onChange: (value) {
              context.read<SignUpOneProvider>().changeCheckBox1(value);
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      height: 64.v,
      text: "lbl_sign_up2".tr,
      buttonStyle: CustomButtonStyles.outlinePrimaryTL201,
      buttonTextStyle: theme.textTheme.titleLarge!,
    );
  }
}
