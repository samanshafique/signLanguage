import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'models/signup_email_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/signup_email_provider.dart';

class SignupEmailScreen extends StatefulWidget {
  const SignupEmailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignupEmailScreenState createState() => SignupEmailScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignupEmailProvider(),
      child: SignupEmailScreen(),
    );
  }
}

class SignupEmailScreenState extends State<SignupEmailScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
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
                  decoration: AppDecoration.outlineLightblueA70001.copyWith(
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
                                  style: CustomTextStyles.titleMediumff6e6e6e,
                                ),
                                TextSpan(
                                  text: "lbl_vox".tr,
                                  style: CustomTextStyles.titleMediumff0073f1,
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
                flex: 31,
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
              SizedBox(height: 17.v),
              CustomElevatedButton(
                text: "msg_sign_up_with_google".tr,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGoogle,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillBlue,
                buttonTextStyle:
                    CustomTextStyles.titleLargeDubaiOnSecondaryContainer,
              ),
              SizedBox(height: 25.v),
              _buildLineOne(context),
              SizedBox(height: 26.v),
              CustomElevatedButton(
                text: "msg_signup_with_email".tr,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
              ),
              Spacer(
                flex: 39,
              ),
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
                          style: CustomTextStyles.bodyLargeDubaiLightblueA700,
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
              Spacer(
                flex: 29,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLineOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              bottom: 12.v,
            ),
            child: SizedBox(
              width: 163.h,
              child: Divider(
                color: appTheme.gray400,
              ),
            ),
          ),
          Container(
            width: 19.h,
            margin: EdgeInsets.only(left: 8.h),
            child: Text(
              "lbl_or".tr,
              maxLines: null,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumLightblueA70001.copyWith(
                height: 2.00,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              bottom: 12.v,
            ),
            child: SizedBox(
              width: 170.h,
              child: Divider(
                color: appTheme.gray400,
                indent: 7.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
