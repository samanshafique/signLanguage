import 'package:saeed_s_application3/widgets/custom_icon_button.dart';
import 'package:saeed_s_application3/widgets/custom_radio_button.dart';
import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'models/forget_password_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/forget_password_provider.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ForgetPasswordScreenState createState() => ForgetPasswordScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ForgetPasswordProvider(),
      child: ForgetPasswordScreen(),
    );
  }
}

class ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Row(
                  children: [
                    Padding(
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
                    Container(
                      width: 169.h,
                      margin: EdgeInsets.only(left: 55.h),
                      child: Text(
                        "lbl_forget_password".tr,
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
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Text(
                  "msg_reset_password_via".tr,
                  style: CustomTextStyles.bodyMediumPoppinsGray60002,
                ),
              ),
              SizedBox(height: 21.v),
              _buildResetPasswordVia(context),
              Spacer(
                flex: 67,
              ),
              CustomElevatedButton(
                text: "lbl_next".tr,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                alignment: Alignment.center,
              ),
              Spacer(
                flex: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildResetPasswordVia(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Consumer<ForgetPasswordProvider>(
          builder: (context, provider, child) {
            return provider.forgetPasswordModelObj!.radioList.isNotEmpty
                ? Column(
                    children: [
                      CustomRadioButton(
                        text: "lbl_phone".tr,
                        value:
                            provider.forgetPasswordModelObj?.radioList[0] ?? "",
                        groupValue: provider.resetPasswordVia,
                        padding: EdgeInsets.fromLTRB(34.h, 14.v, 30.h, 14.v),
                        textStyle: CustomTextStyles.titleSmallDubaiGray60002,
                        onChange: (value) {
                          provider.changeRadioButton1(value);
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.v),
                        child: CustomRadioButton(
                          text: "lbl_email".tr,
                          value:
                              provider.forgetPasswordModelObj?.radioList[1] ??
                                  "",
                          groupValue: provider.resetPasswordVia,
                          padding: EdgeInsets.fromLTRB(34.h, 14.v, 30.h, 14.v),
                          textStyle: CustomTextStyles.titleSmallDubaiGray60002,
                          onChange: (value) {
                            provider.changeRadioButton1(value);
                          },
                        ),
                      ),
                    ],
                  )
                : Container();
          },
        ),
      ),
    );
  }
}
