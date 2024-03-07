import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'models/welcome_screen_two_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/welcome_screen_two_provider.dart';

class WelcomeScreenTwoScreen extends StatefulWidget {
  const WelcomeScreenTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  WelcomeScreenTwoScreenState createState() => WelcomeScreenTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WelcomeScreenTwoProvider(),
      child: WelcomeScreenTwoScreen(),
    );
  }
}

class WelcomeScreenTwoScreenState extends State<WelcomeScreenTwoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: 430.h,
          child: Column(
            children: [
              SizedBox(height: 65.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgManInFormalwear491x290,
                        height: 491.v,
                        width: 290.h,
                      ),
                      SizedBox(height: 29.v),
                      _buildTwo(context),
                    ],
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
  Widget _buildTwo(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 44.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 79.v,
            width: 390.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "msg_track_manage_your".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "lbl_usage_with_easy".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 47.v),
          CustomElevatedButton(
            height: 64.v,
            text: "lbl_get_started".tr,
            buttonStyle: CustomButtonStyles.outlinePrimaryTL201,
            buttonTextStyle: theme.textTheme.titleLarge!,
          ),
          SizedBox(height: 22.v),
        ],
      ),
    );
  }
}
