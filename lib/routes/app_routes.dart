import 'package:flutter/material.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/signup_email_screen/signup_email_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/signup_two_screen/signup_two_screen.dart';
import '../presentation/otp_screen/otp_screen.dart';
import '../presentation/registered_screen/registered_screen.dart';
import '../presentation/profile_setup_two_screen/profile_setup_two_screen.dart';
import '../presentation/forget_password_screen/forget_password_screen.dart';
import '../presentation/recover_password_screen/recover_password_screen.dart';
import '../presentation/reset_password_screen/reset_password_screen.dart';
import '../presentation/password_changed_screen/password_changed_screen.dart';
import '../presentation/home_container_screen/home_container_screen.dart';
import '../presentation/learn_one_screen/learn_one_screen.dart';
import '../presentation/learn_screen/learn_screen.dart';
import '../presentation/video_screen/video_screen.dart';
import '../presentation/live_translation_screen/live_translation_screen.dart';
import '../presentation/live_text_screen/live_text_screen.dart';
import '../presentation/live_text_speech_one_screen/live_text_speech_one_screen.dart';
import '../presentation/live_text_speech_screen/live_text_speech_screen.dart';
import '../presentation/profile_setup_one_screen/profile_setup_one_screen.dart';
import '../presentation/profile_setup_screen/profile_setup_screen.dart';
import '../presentation/language_screen/language_screen.dart';
import '../presentation/help_faq_screen/help_faq_screen.dart';
import '../presentation/support_screen/support_screen.dart';
import '../presentation/saved_screen/saved_screen.dart';
import '../presentation/saved_translation_screen/saved_translation_screen.dart';
import '../presentation/query_successfully_screen/query_successfully_screen.dart';
import '../presentation/splash1_screen/splash1_screen.dart';
import '../presentation/login_in_screen/login_in_screen.dart';
import '../presentation/add_device_screen/add_device_screen.dart';
import '../presentation/otp1_screen/otp1_screen.dart';
import '../presentation/device_manage_screen/device_manage_screen.dart';
import '../presentation/device_manage_one_screen/device_manage_one_screen.dart';
import '../presentation/splash_one_screen/splash_one_screen.dart';
import '../presentation/otp_screen_one_screen/otp_screen_one_screen.dart';
import '../presentation/welcome_screen/welcome_screen.dart';
import '../presentation/device_add_screen/device_add_screen.dart';
import '../presentation/welcome_screen_one_screen/welcome_screen_one_screen.dart';
import '../presentation/welcome_screen_two_screen/welcome_screen_two_screen.dart';
import '../presentation/otp_screen_two_screen/otp_screen_two_screen.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/device_add_one_screen/device_add_one_screen.dart';
import '../presentation/add_device_one_screen/add_device_one_screen.dart';
import '../presentation/sign_up_one_screen/sign_up_one_screen.dart';
import '../presentation/login_in_one_screen/login_in_one_screen.dart';
import '../presentation/welcome_screen_three_screen/welcome_screen_three_screen.dart';
import '../presentation/otp_screen_three_screen/otp_screen_three_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

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
        signupEmailScreen: SignupEmailScreen.builder,
        loginScreen: LoginScreen.builder,
        signupTwoScreen: SignupTwoScreen.builder,
        otpScreen: OtpScreen.builder,
        registeredScreen: RegisteredScreen.builder,
        profileSetupTwoScreen: ProfileSetupTwoScreen.builder,
        forgetPasswordScreen: ForgetPasswordScreen.builder,
        recoverPasswordScreen: RecoverPasswordScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        passwordChangedScreen: PasswordChangedScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        learnOneScreen: LearnOneScreen.builder,
        learnScreen: LearnScreen.builder,
        videoScreen: VideoScreen.builder,
        liveTranslationScreen: LiveTranslationScreen.builder,
        liveTextScreen: LiveTextScreen.builder,
        liveTextSpeechOneScreen: LiveTextSpeechOneScreen.builder,
        liveTextSpeechScreen: LiveTextSpeechScreen.builder,
        profileSetupOneScreen: ProfileSetupOneScreen.builder,
        profileSetupScreen: ProfileSetupScreen.builder,
        languageScreen: LanguageScreen.builder,
        helpFaqScreen: HelpFaqScreen.builder,
        supportScreen: SupportScreen.builder,
        savedScreen: SavedScreen.builder,
        savedTranslationScreen: SavedTranslationScreen.builder,
        querySuccessfullyScreen: QuerySuccessfullyScreen.builder,
        splash1Screen: Splash1Screen.builder,
        loginInScreen: LoginInScreen.builder,
        addDeviceScreen: AddDeviceScreen.builder,
        otp1Screen: Otp1Screen.builder,
        deviceManageScreen: DeviceManageScreen.builder,
        deviceManageOneScreen: DeviceManageOneScreen.builder,
        splashOneScreen: SplashOneScreen.builder,
        otpScreenOneScreen: OtpScreenOneScreen.builder,
        welcomeScreen: WelcomeScreen.builder,
        deviceAddScreen: DeviceAddScreen.builder,
        welcomeScreenOneScreen: WelcomeScreenOneScreen.builder,
        welcomeScreenTwoScreen: WelcomeScreenTwoScreen.builder,
        otpScreenTwoScreen: OtpScreenTwoScreen.builder,
        signUpScreen: SignUpScreen.builder,
        deviceAddOneScreen: DeviceAddOneScreen.builder,
        addDeviceOneScreen: AddDeviceOneScreen.builder,
        signUpOneScreen: SignUpOneScreen.builder,
        loginInOneScreen: LoginInOneScreen.builder,
        welcomeScreenThreeScreen: WelcomeScreenThreeScreen.builder,
        otpScreenThreeScreen: OtpScreenThreeScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
