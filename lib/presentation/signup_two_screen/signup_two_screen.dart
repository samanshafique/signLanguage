import 'package:saeed_s_application3/widgets/custom_icon_button.dart';
import 'package:saeed_s_application3/widgets/custom_text_form_field.dart';
import 'package:saeed_s_application3/core/utils/validation_functions.dart';
import 'package:saeed_s_application3/widgets/custom_phone_number.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:saeed_s_application3/widgets/custom_checkbox_button.dart';
import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'models/signup_two_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/signup_two_provider.dart';

class SignupTwoScreen extends StatefulWidget {
  const SignupTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignupTwoScreenState createState() => SignupTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignupTwoProvider(),
      child: SignupTwoScreen(),
    );
  }
}

class SignupTwoScreenState extends State<SignupTwoScreen> {
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
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration: IconButtonStyleHelper.fillLightBlueA,
                        alignment: Alignment.centerLeft,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowDown,
                        ),
                      ),
                    ),
                    SizedBox(height: 14.v),
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
                    SizedBox(height: 17.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 69.h,
                        margin: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_signup".tr,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.headlineSmallMedium.copyWith(
                            height: 1.33,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 9.v),
                    _buildEmail(context),
                    SizedBox(height: 9.v),
                    _buildEmail1(context),
                    SizedBox(height: 9.v),
                    _buildEmail2(context),
                    SizedBox(height: 9.v),
                    _buildEmail3(context),
                    SizedBox(height: 9.v),
                    _buildEmail4(context),
                    SizedBox(height: 15.v),
                    _buildCheckbox(context),
                    SizedBox(height: 13.v),
                    CustomElevatedButton(
                      text: "lbl_register".tr,
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                    ),
                    SizedBox(height: 24.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text(
                            "msg_already_have_an".tr,
                            style: CustomTextStyles.bodyLargeDubaiGray900,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "lbl_log_in".tr,
                                style: CustomTextStyles
                                    .bodyLargeDubaiLightblueA700,
                              ),
                              SizedBox(height: 2.v),
                              Container(
                                height: 1.v,
                                width: 40.h,
                                decoration: BoxDecoration(
                                  color: appTheme.lightBlueA700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
            "lbl_name".tr,
            style: CustomTextStyles.bodyMediumDubaiGray900,
          ),
          Selector<SignupTwoProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.nameController,
            builder: (context, nameController, child) {
              return CustomTextFormField(
                controller: nameController,
                hintText: "lbl_muhammad_owais".tr,
                hintStyle: CustomTextStyles.bodyMediumDubai,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 10.v,
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
            "lbl_email".tr,
            style: CustomTextStyles.bodyMediumDubaiGray900,
          ),
          Selector<SignupTwoProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.emailController,
            builder: (context, emailController, child) {
              return CustomTextFormField(
                controller: emailController,
                hintText: "msg_email_example_com".tr,
                hintStyle: CustomTextStyles.bodyMediumDubai,
                textInputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_email".tr;
                  }
                  return null;
                },
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 10.v,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_phone".tr,
            style: CustomTextStyles.bodyMediumDubaiGray900,
          ),
          Consumer<SignupTwoProvider>(
            builder: (context, provider, child) {
              return CustomPhoneNumber(
                country: provider.selectedCountry ??
                    CountryPickerUtils.getCountryByPhoneCode('1'),
                controller: provider.phoneNumberController,
                onTap: (Country value) {
                  context.read<SignupTwoProvider>().changeCountry(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_password".tr,
            style: CustomTextStyles.bodyMediumDubaiGray900,
          ),
          Consumer<SignupTwoProvider>(
            builder: (context, provider, child) {
              return CustomTextFormField(
                controller: provider.passwordController,
                hintText: "lbl_1239456789".tr,
                hintStyle: CustomTextStyles.bodyMediumDubai,
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
  Widget _buildEmail4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_confirm_password".tr,
            style: CustomTextStyles.bodyMediumDubaiGray900,
          ),
          Consumer<SignupTwoProvider>(
            builder: (context, provider, child) {
              return CustomTextFormField(
                controller: provider.confirmpasswordController,
                hintText: "lbl".tr,
                hintStyle: CustomTextStyles.bodyMediumDubai,
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

  /// Section Widget
  Widget _buildCheckbox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Selector<SignupTwoProvider, bool?>(
          selector: (
            context,
            provider,
          ) =>
              provider.checkbox,
          builder: (context, checkbox, child) {
            return CustomCheckboxButton(
              alignment: Alignment.centerLeft,
              text: "msg_i_agree_to_all".tr,
              value: checkbox,
              textStyle: CustomTextStyles.bodyMediumLightblueA700,
              onChange: (value) {
                context.read<SignupTwoProvider>().changeCheckBox1(value);
              },
            );
          },
        ),
      ),
    );
  }
}
