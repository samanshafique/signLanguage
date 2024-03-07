import 'package:saeed_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:saeed_s_application3/widgets/custom_icon_button.dart';
import 'package:saeed_s_application3/widgets/custom_text_form_field.dart';
import 'package:saeed_s_application3/core/utils/validation_functions.dart';
import 'package:saeed_s_application3/widgets/custom_drop_down.dart';
import 'models/profile_setup_model.dart';
import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'package:saeed_s_application3/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/profile_setup_provider.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileSetupScreenState createState() => ProfileSetupScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileSetupProvider(),
      child: ProfileSetupScreen(),
    );
  }
}

class ProfileSetupScreenState extends State<ProfileSetupScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
        appBar: _buildAppBar(context),
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
                        color: appTheme.whiteA700,
                      ),
                    ),
                    SizedBox(height: 71.v),
                    SizedBox(
                      height: 128.adaptSize,
                      width: 128.adaptSize,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 29.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 37.v,
                                    width: 36.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.whiteA700,
                                      borderRadius: BorderRadius.circular(
                                        18.h,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 7.v),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgTelevision,
                                    height: 28.v,
                                    width: 70.h,
                                    radius: BorderRadius.circular(
                                      1.h,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: appTheme.lightBlueA700,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: appTheme.lightBlueA700,
                                  width: 1.h,
                                ),
                                borderRadius: BorderRadiusStyle.circleBorder64,
                              ),
                              child: Container(
                                height: 128.adaptSize,
                                width: 128.adaptSize,
                                padding: EdgeInsets.all(3.h),
                                decoration:
                                    AppDecoration.outlineLightblueA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder64,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgMaskGroup,
                                      height: 120.adaptSize,
                                      width: 120.adaptSize,
                                      alignment: Alignment.center,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 2.h,
                                        bottom: 2.v,
                                      ),
                                      child: CustomIconButton(
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        padding: EdgeInsets.all(2.h),
                                        decoration: IconButtonStyleHelper
                                            .outlineLightBlueA,
                                        alignment: Alignment.bottomRight,
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgCamera,
                                        ),
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
                    SizedBox(height: 39.v),
                    _buildEmail(context),
                    SizedBox(height: 9.v),
                    _buildEmail1(context),
                    SizedBox(height: 9.v),
                    _buildGroup105(context),
                    SizedBox(height: 9.v),
                    _buildEmail2(context),
                    SizedBox(height: 1.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "lbl_change_password".tr,
                          style: CustomTextStyles.bodyMediumDubaiLightblueA700_1
                              .copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 64.v),
                    CustomElevatedButton(
                      text: "lbl_save".tr,
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_profile_setup".tr,
      ),
      styleType: Style.bgFill,
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
          Selector<ProfileSetupProvider, TextEditingController?>(
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
          Selector<ProfileSetupProvider, TextEditingController?>(
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
  Widget _buildGroup105(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_gender".tr,
                style: CustomTextStyles.bodyMediumDubaiGray900,
              ),
              Selector<ProfileSetupProvider, ProfileSetupModel?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.profileSetupModelObj,
                builder: (context, profileSetupModelObj, child) {
                  return CustomDropDown(
                    width: 204.h,
                    hintText: "lbl_male".tr,
                    items: profileSetupModelObj?.dropdownItemList ?? [],
                    onChanged: (value) {
                      context.read<ProfileSetupProvider>().onSelected(value);
                    },
                  );
                },
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_age".tr,
                  style: CustomTextStyles.bodyMediumDubaiGray900,
                ),
                Selector<ProfileSetupProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.group105Controller,
                  builder: (context, group105Controller, child) {
                    return CustomTextFormField(
                      width: 143.h,
                      controller: group105Controller,
                      hintText: "lbl_22".tr,
                      hintStyle: CustomTextStyles.bodyMediumDubai,
                      textInputAction: TextInputAction.done,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.h,
                        vertical: 10.v,
                      ),
                    );
                  },
                ),
              ],
            ),
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
          Container(
            decoration: AppDecoration.outlineBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Row(
              children: [
                Container(
                  width: 65.h,
                  padding: EdgeInsets.symmetric(vertical: 13.v),
                  decoration: AppDecoration.outlineLightblueA700.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPakistan,
                        height: 16.v,
                        width: 22.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 4.v,
                        width: 6.h,
                        margin: EdgeInsets.symmetric(vertical: 6.v),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    bottom: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_phone_number".tr,
                        style: CustomTextStyles.bodySmallDubaiGray40003,
                      ),
                      Text(
                        "msg_92_000_0000_00002".tr,
                        style: CustomTextStyles.bodyMediumDubai,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
