import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'models/password_changed_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/password_changed_provider.dart';

class PasswordChangedScreen extends StatefulWidget {
  const PasswordChangedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PasswordChangedScreenState createState() => PasswordChangedScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PasswordChangedProvider(),
      child: PasswordChangedScreen(),
    );
  }
}

class PasswordChangedScreenState extends State<PasswordChangedScreen> {
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
              Spacer(
                flex: 45,
              ),
              Container(
                height: 138.adaptSize,
                width: 138.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 32.h,
                  vertical: 39.v,
                ),
                decoration: AppDecoration.fillLightBlueA.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder69,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 59.v,
                  width: 73.h,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 27.v),
              SizedBox(
                width: 190.h,
                child: Text(
                  "msg_password_changed".tr,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    height: 1.33,
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              Container(
                width: 315.h,
                margin: EdgeInsets.only(
                  left: 38.h,
                  right: 39.h,
                ),
                child: Text(
                  "msg_your_phone_number2".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style:
                      CustomTextStyles.titleLargeDubaiGray60002Medium.copyWith(
                    height: 1.60,
                  ),
                ),
              ),
              SizedBox(height: 43.v),
              CustomElevatedButton(
                text: "lbl_sign_in".tr,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
              ),
              Spacer(
                flex: 54,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
