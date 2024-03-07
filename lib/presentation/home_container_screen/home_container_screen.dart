import 'package:saeed_s_application3/presentation/home_page/home_page.dart';
import 'package:saeed_s_application3/presentation/learn_tutorials_page/learn_tutorials_page.dart';
import 'package:saeed_s_application3/presentation/live_text_screen/live_text_screen.dart';
import 'package:saeed_s_application3/presentation/otp_screen/otp_screen.dart';
import 'package:saeed_s_application3/presentation/profile_setup_screen/profile_setup_screen.dart';
import 'package:saeed_s_application3/presentation/registered_screen/registered_screen.dart';
import 'package:saeed_s_application3/presentation/saved_translation_screen/saved_translation_screen.dart';
import 'package:saeed_s_application3/presentation/signup_email_screen/signup_email_screen.dart';
import 'package:saeed_s_application3/presentation/signup_two_screen/signup_two_screen.dart';
import 'package:saeed_s_application3/presentation/splash_screen/splash_screen.dart';
import 'package:saeed_s_application3/widgets/custom_bottom_bar.dart';
import 'models/home_container_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/home_container_provider.dart';

class HomeContainerScreen extends StatefulWidget {
  const HomeContainerScreen({Key? key}) : super(key: key);

  @override
  HomeContainerScreenState createState() => HomeContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeContainerProvider(),
        child: HomeContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class HomeContainerScreenState extends State<HomeContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      print(type);
      switch (type) {
        case BottomBarEnum.Home:
          navigatorKey.currentState?.pushReplacementNamed(AppRoutes.homePage);
          break;
        case BottomBarEnum.Bookmark:
          navigatorKey.currentState
              ?.pushReplacementNamed(AppRoutes.savedTranslationScreen);
          break;
        case BottomBarEnum.Live:
          navigatorKey.currentState
              ?.pushReplacementNamed(AppRoutes.liveTextScreen);
          break;
        case BottomBarEnum.News:
          navigatorKey.currentState
              ?.pushReplacementNamed(AppRoutes.learnTutorialsPage);
          break;
        case BottomBarEnum.Profile:
          navigatorKey.currentState
              ?.pushReplacementNamed(AppRoutes.profileSetupScreen);
          break;
        // Add more cases if you have additional bottom bar items
      }
    });
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.savedTranslationScreen:
        return SavedTranslationScreen.builder(context);
      case AppRoutes.liveTextScreen:
        return LiveTextScreen.builder(context);
      case AppRoutes.learnTutorialsPage:
        return LearnTutorialsPage.builder(context);
      case AppRoutes.profileSetupScreen:
        return ProfileSetupScreen.builder(context);
      default:
        return HomePage.builder(context);
    }
  }
}
