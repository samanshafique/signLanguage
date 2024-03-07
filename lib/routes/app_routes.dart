import 'package:flutter/material.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/signup_email_screen/signup_email_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/signup_two_screen/signup_two_screen.dart';
import '../presentation/otp_screen/otp_screen.dart';
import '../presentation/registered_screen/registered_screen.dart';
import '../presentation/home_container_screen/home_container_screen.dart';
import '../presentation/live_translation_screen/live_translation_screen.dart';
import '../presentation/live_text_screen/live_text_screen.dart';
import '../presentation/saved_translation_screen/saved_translation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signupEmailScreen = '/signup_email_screen';

  static const String loginScreen = '/login_screen';

  static const String signupTwoScreen = '/signup_two_screen';

  static const String otpScreen = '/otp_screen';

  static const String registeredScreen = '/registered_screen';

  static const String profileSetupTwoScreen = '/profile_setup_two_screen';

  static const String forgetPasswordScreen = '/forget_password_screen';

  static const String recoverPasswordScreen = '/recover_password_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String passwordChangedScreen = '/password_changed_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String learnOneScreen = '/learn_one_screen';

  static const String learnTutorialsPage = '/learn_tutorials_page';

  static const String learnScreen = '/learn_screen';

  static const String videoScreen = '/video_screen';

  static const String liveTranslationScreen = '/live_translation_screen';

  static const String liveTextScreen = '/live_text_screen';

  static const String liveTextSpeechOneScreen = '/live_text_speech_one_screen';

  static const String liveTextSpeechScreen = '/live_text_speech_screen';

  static const String profileSetupOneScreen = '/profile_setup_one_screen';

  static const String profileSetupScreen = '/profile_setup_screen';

  static const String languageScreen = '/language_screen';

  static const String helpFaqScreen = '/help_faq_screen';

  static const String supportScreen = '/support_screen';

  static const String savedScreen = '/saved_screen';

  static const String savedTranslationScreen = '/saved_translation_screen';

  static const String querySuccessfullyScreen = '/query_successfully_screen';

  static const String splash1Screen = '/splash1_screen';

  static const String loginInScreen = '/login_in_screen';

  static const String addDeviceScreen = '/add_device_screen';

  static const String otp1Screen = '/otp1_screen';

  static const String deviceManageScreen = '/device_manage_screen';

  static const String deviceManageOneScreen = '/device_manage_one_screen';

  static const String splashOneScreen = '/splash_one_screen';

  static const String otpScreenOneScreen = '/otp_screen_one_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String deviceAddScreen = '/device_add_screen';

  static const String welcomeScreenOneScreen = '/welcome_screen_one_screen';

  static const String welcomeScreenTwoScreen = '/welcome_screen_two_screen';

  static const String otpScreenTwoScreen = '/otp_screen_two_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String deviceAddOneScreen = '/device_add_one_screen';

  static const String addDeviceOneScreen = '/add_device_one_screen';

  static const String signUpOneScreen = '/sign_up_one_screen';

  static const String loginInOneScreen = '/login_in_one_screen';

  static const String welcomeScreenThreeScreen = '/welcome_screen_three_screen';

  static const String otpScreenThreeScreen = '/otp_screen_three_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        //!-----1 Screen
        signupEmailScreen: SignupEmailScreen.builder,
        //!-----2 Screen
        signupTwoScreen: SignupTwoScreen.builder,
        //!-----3 Screen
        loginScreen: LoginScreen.builder,
        //!-----4 Screen
        otpScreen: OtpScreen.builder,
        //!-----5 Screen
        registeredScreen: RegisteredScreen.builder,
        // profileSetupTwoScreen: ProfileSetupTwoScreen.builder,
        // forgetPasswordScreen: ForgetPasswordScreen.builder,
        // recoverPasswordScreen: RecoverPasswordScreen.builder,
        // resetPasswordScreen: ResetPasswordScreen.builder,
        // passwordChangedScreen: PasswordChangedScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,

        liveTranslationScreen: LiveTranslationScreen.builder,
        liveTextScreen: LiveTextScreen.builder,
        savedTranslationScreen: SavedTranslationScreen.builder,

        initialRoute: SplashScreen.builder
      };
}
