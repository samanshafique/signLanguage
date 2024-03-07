import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'models/registered_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/registered_provider.dart';

class RegisteredScreen extends StatefulWidget {
  const RegisteredScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RegisteredScreenState createState() => RegisteredScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegisteredProvider(),
      child: RegisteredScreen(),
    );
  }
}

class RegisteredScreenState extends State<RegisteredScreen> {
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
                width: 237.h,
                child: Text(
                  "msg_successfully_registered".tr,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    height: 1.33,
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              Container(
                width: 344.h,
                margin: EdgeInsets.only(
                  left: 24.h,
                  right: 23.h,
                ),
                child: Text(
                  "msg_your_phone_number".tr,
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
