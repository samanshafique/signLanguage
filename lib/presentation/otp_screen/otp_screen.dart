import 'package:fluttertoast/fluttertoast.dart';
import 'package:saeed_s_application3/widgets/custom_icon_button.dart';
import 'package:saeed_s_application3/widgets/custom_pin_code_text_field.dart';
import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'models/otp_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/otp_provider.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OtpScreenState createState() => OtpScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OtpProvider(),
      child: OtpScreen(),
    );
  }
}

class OtpScreenState extends State<OtpScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              NavigatorService.goBack();
            },
            child: Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: CustomIconButton(
                height: 40.adaptSize,
                width: 40.adaptSize,
                padding: EdgeInsets.all(8.h),
                decoration: IconButtonStyleHelper.fillLightBlueA,
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                ),
              ),
            ),
          ),
          centerTitle: true,
          title: Text(
            "msg_verify_your_phone".tr,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.headlineSmall!.copyWith(
              height: 1.33,
            ),
          ),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Consumer<OtpProvider>(builder: (context, otpProvider, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onError,
                  ),
                ),
                SizedBox(height: 16.v),
                Container(
                  width: 316.h,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    right: 60.h,
                  ),
                  child: Text(
                    "msg_we_ve_send_you_the".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumPoppinsGray60002_1,
                  ),
                ),
                SizedBox(height: 18.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "msg_type_your_otp_here".tr,
                    maxLines: null,
                    style:
                        CustomTextStyles.bodyLargeDubaiLightblueA70001.copyWith(
                      height: 1.78,
                    ),
                  ),
                ),
                SizedBox(height: 26.v),
                Padding(
                    padding: EdgeInsets.only(
                      left: 42.h,
                      right: 41.h,
                    ),
                    child: CustomPinCodeTextField(
                      context: context,
                      onChanged: (value) {
                        otpProvider.otpPinCode = value;
                      },
                    )),
                SizedBox(height: 40.v),
                //!--------Move to Next
                CustomElevatedButton(
                  onPressed: () {
                    if (otpProvider.otpPinCode == '12345') {
                      print('Next');
                      NavigatorService.pushNamed(
                        AppRoutes.registeredScreen,
                      );
                    } else {
                      Fluttertoast.showToast(
                        msg: 'Invalid OTP',
                        textColor: appTheme.lightBlueA700,
                        backgroundColor: Colors.white,
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                      );
                    }
                  },
                  text: "lbl_register".tr,
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  alignment: Alignment.center,
                ),
                SizedBox(height: 36.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_resend_code".tr,
                    style: CustomTextStyles.bodyMediumLightblueA700,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            );
          }),
        ),
      ),
    );
  }
}
