import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SplashProvider(), child: SplashScreen());
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 4000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.signupEmailScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      height: 20.v,
                      width: double.maxFinite,
                      decoration:
                          BoxDecoration(color: theme.colorScheme.onError)),
                  Spacer(flex: 35),
                  Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: appTheme.lightBlueA70001, width: 18.h),
                          borderRadius: BorderRadiusStyle.circleBorder85),
                      child: Container(
                          height: 170.adaptSize,
                          width: 170.adaptSize,
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.h, vertical: 31.v),
                          decoration: AppDecoration.outlineLightBlueA.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder85),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_sign".tr,
                                          style: CustomTextStyles
                                              .headlineMediumff6e6e6e),
                                      TextSpan(
                                          text: "lbl_vox".tr,
                                          style: CustomTextStyles
                                              .headlineMediumff0073f1)
                                    ]),
                                    textAlign: TextAlign.left)),
                            CustomImageView(
                                imagePath: ImageConstant.imgContrast,
                                height: 68.v,
                                width: 32.h,
                                alignment: Alignment.centerLeft)
                          ]))),
                  SizedBox(height: 19.v),
                  SizedBox(
                      width: 262.h,
                      child: Text("msg_building_bridges".tr,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumGray900Bold)),
                  Spacer(flex: 64)
                ]))));
  }
}
