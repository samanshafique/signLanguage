import 'package:saeed_s_application3/widgets/custom_icon_button.dart';
import 'package:saeed_s_application3/widgets/custom_text_form_field.dart';
import 'package:saeed_s_application3/core/utils/validation_functions.dart';
import 'package:saeed_s_application3/widgets/custom_drop_down.dart';
import 'models/profile_setup_two_model.dart';
import 'package:saeed_s_application3/widgets/custom_phone_number.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/profile_setup_two_provider.dart';

class ProfileSetupTwoScreen extends StatefulWidget {
  const ProfileSetupTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileSetupTwoScreenState createState() => ProfileSetupTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileSetupTwoProvider(),
      child: ProfileSetupTwoScreen(),
    );
  }
}

class ProfileSetupTwoScreenState extends State<ProfileSetupTwoScreen> {
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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
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
                              width: 133.h,
                              margin: EdgeInsets.only(left: 72.h),
                              child: Text(
                                "lbl_profile_setup".tr,
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
                    SizedBox(height: 14.v),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 127.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 34.h,
                        vertical: 29.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder69,
                      ),
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
                          SizedBox(height: 8.v),
                        ],
                      ),
                    ),
                    SizedBox(height: 28.v),
                    _buildEmail(context),
                    SizedBox(height: 9.v),
                    _buildEmail1(context),
                    SizedBox(height: 9.v),
                    _buildFortyTwo(context),
                    SizedBox(height: 9.v),
                    _buildEmail2(context),
                    SizedBox(height: 9.v),
                    _buildEmail3(context),
                    SizedBox(height: 34.v),
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
          Selector<ProfileSetupTwoProvider, TextEditingController?>(
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
          Selector<ProfileSetupTwoProvider, TextEditingController?>(
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
  Widget _buildFortyTwo(BuildContext context) {
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
              Selector<ProfileSetupTwoProvider, ProfileSetupTwoModel?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.profileSetupTwoModelObj,
                builder: (context, profileSetupTwoModelObj, child) {
                  return CustomDropDown(
                    width: 204.h,
                    hintText: "lbl_male".tr,
                    items: profileSetupTwoModelObj?.dropdownItemList ?? [],
                    onChanged: (value) {
                      context.read<ProfileSetupTwoProvider>().onSelected(value);
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
                Selector<ProfileSetupTwoProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.fortyTwoController,
                  builder: (context, fortyTwoController, child) {
                    return CustomTextFormField(
                      width: 143.h,
                      controller: fortyTwoController,
                      hintText: "lbl_22".tr,
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
          Consumer<ProfileSetupTwoProvider>(
            builder: (context, provider, child) {
              return CustomPhoneNumber(
                country: provider.selectedCountry ??
                    CountryPickerUtils.getCountryByPhoneCode('1'),
                controller: provider.phoneNumberController,
                onTap: (Country value) {
                  context.read<ProfileSetupTwoProvider>().changeCountry(value);
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
            "lbl_location".tr,
            style: CustomTextStyles.bodyMediumDubaiGray900,
          ),
          Selector<ProfileSetupTwoProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.locationController,
            builder: (context, locationController, child) {
              return CustomTextFormField(
                controller: locationController,
                hintText: "msg_search_selection".tr,
                hintStyle: CustomTextStyles.bodyMediumDubai,
                textInputAction: TextInputAction.done,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 13.v, 20.h, 13.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLinkedin,
                    height: 18.v,
                    width: 14.h,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 44.v,
                ),
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
