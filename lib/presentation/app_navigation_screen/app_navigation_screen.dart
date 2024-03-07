import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Signup email".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupEmailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Signup Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OTP".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.otpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registered".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registeredScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile Setup Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileSetupTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "fORGET PASSWORD".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Recover Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.recoverPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Reset Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Password Changed".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.passwordChangedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Learn One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.learnOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Learn".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.learnScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Video".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.videoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Live Translation".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.liveTranslationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Live TEXT".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.liveTextScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Live TEXT & SPEECH One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.liveTextSpeechOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Live TEXT & SPEECH".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.liveTextSpeechScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile Setup One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileSetupOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile Setup".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileSetupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Language".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.languageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HELP & FAQ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.helpFaqScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Support".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.supportScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Saved".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.savedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Saved translation".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.savedTranslationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Query Successfully".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.querySuccessfullyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splash1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "add device".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addDeviceScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OTP Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.otp1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Device manage".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.deviceManageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Device manage One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.deviceManageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OTP Screen One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.otpScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Device add".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.deviceAddScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome Screen One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.welcomeScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome Screen Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.welcomeScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OTP Screen Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.otpScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Device add One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.deviceAddOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "add device One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addDeviceOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login in One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginInOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome Screen Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.welcomeScreenThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OTP Screen Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.otpScreenThreeScreen),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
