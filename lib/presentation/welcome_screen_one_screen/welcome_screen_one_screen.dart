import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'models/welcome_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/welcome_screen_one_provider.dart';

class WelcomeScreenOneScreen extends StatefulWidget {
  const WelcomeScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  WelcomeScreenOneScreenState createState() => WelcomeScreenOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WelcomeScreenOneProvider(),
      child: WelcomeScreenOneScreen(),
    );
  }
}

class WelcomeScreenOneScreenState extends State<WelcomeScreenOneScreen> {
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
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 67.v),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgManInFormalwear491x290,
                          height: 491.v,
                          width: 290.h,
                        ),
                        SizedBox(height: 59.v),
                        _buildEleven(context),
                        SizedBox(height: 34.v),
                        CustomElevatedButton(
                          height: 64.v,
                          text: "lbl_get_started".tr,
                          margin: EdgeInsets.symmetric(horizontal: 16.h),
                          buttonStyle: CustomButtonStyles.outlinePrimaryTL201,
                          buttonTextStyle: theme.textTheme.titleLarge!,
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
  Widget _buildEleven(BuildContext context) {
    return Container(
      height: 107.v,
      width: 430.h,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillErrorContainer,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text(
                "msg_track_manage_your".tr,
                style: theme.textTheme.headlineLarge,
              ),
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
    );
  }
}
