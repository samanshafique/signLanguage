import 'package:saeed_s_application3/widgets/custom_pin_code_text_field.dart';
import 'package:saeed_s_application3/widgets/custom_radio_button.dart';
import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'package:saeed_s_application3/widgets/custom_icon_button.dart';
import 'models/otp_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/otp_screen_one_provider.dart';

class OtpScreenOneScreen extends StatefulWidget {
  const OtpScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OtpScreenOneScreenState createState() => OtpScreenOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OtpScreenOneProvider(),
      child: OtpScreenOneScreen(),
    );
  }
}

class OtpScreenOneScreenState extends State<OtpScreenOneScreen> {
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
        body: SizedBox(
          width: 430.h,
          child: Column(
            children: [
              SizedBox(height: 18.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15.v),
                    padding: EdgeInsets.symmetric(horizontal: 15.h),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgElectricLogoAi02186x130,
                          height: 186.v,
                          width: 130.h,
                        ),
                        SizedBox(height: 31.v),
                        Text(
                          "msg_otp_verification".tr,
                          style: CustomTextStyles
                              .headlineLargePoppinsIndigo900SemiBold,
                        ),
                        SizedBox(height: 18.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "msg_sign_up_to_track".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 321.h,
                            margin: EdgeInsets.only(right: 78.h),
                            child: Text(
                              "msg_enter_the_verification".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  CustomTextStyles.bodyMediumPoppinsGray60002_1,
                            ),
                          ),
                        ),
                        SizedBox(height: 33.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 33.h,
                            right: 31.h,
                          ),
                          child: Selector<OtpScreenOneProvider,
                              TextEditingController?>(
                            selector: (
                              context,
                              provider,
                            ) =>
                                provider.otpController,
                            builder: (context, otpController, child) {
                              return CustomPinCodeTextField(
                                context: context,
                                controller: otpController,
                                onChanged: (value) {
                                  otpController?.text = value;
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 28.v),
                        _buildTwoHundred(context),
                        SizedBox(height: 28.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_didn_t_receive_code2".tr,
                                style:
                                    CustomTextStyles.bodyMediumPoppinsff80807f,
                              ),
                              TextSpan(
                                text: "lbl_resend".tr,
                                style: CustomTextStyles
                                    .titleSmallPoppinsff529744
                                    .copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 168.v),
                        CustomElevatedButton(
                          height: 58.v,
                          text: "lbl_verify".tr,
                          margin: EdgeInsets.only(
                            left: 32.h,
                            right: 33.h,
                          ),
                          buttonStyle: CustomButtonStyles.outlinePrimaryTL204,
                          buttonTextStyle:
                              CustomTextStyles.titleLargePoppinsGray60002,
                        ),
                        SizedBox(height: 47.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: CustomIconButton(
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            padding: EdgeInsets.all(18.h),
                            decoration: IconButtonStyleHelper.fillLightGreen,
                            alignment: Alignment.centerLeft,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowRight,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildTwoHundred(BuildContext context) {
    return Consumer<OtpScreenOneProvider>(
      builder: (context, provider, child) {
        return CustomRadioButton(
          text: "lbl_02_00".tr,
          value: "lbl_02_00".tr,
          groupValue: provider.radioGroup,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          onChange: (value) {
            provider.changeRadioButton1(value);
          },
        );
      },
    );
  }
}
