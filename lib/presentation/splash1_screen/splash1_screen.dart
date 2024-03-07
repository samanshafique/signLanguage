import 'models/splash1_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/splash1_provider.dart';

class Splash1Screen extends StatefulWidget {
  const Splash1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Splash1ScreenState createState() => Splash1ScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Splash1Provider(),
      child: Splash1Screen(),
    );
  }
}

class Splash1ScreenState extends State<Splash1Screen> {
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
              SizedBox(height: 279.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildSplash(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSplash(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 354.v),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgElectricLogoAi02,
            height: 186.v,
            width: 130.h,
          ),
          SizedBox(
            height: 68.v,
            width: 191.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_electralysis".tr,
                    style: theme.textTheme.displayMedium,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "msg_manage_your_electricity".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
