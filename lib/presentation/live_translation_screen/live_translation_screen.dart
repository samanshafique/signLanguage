import 'package:saeed_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'package:saeed_s_application3/widgets/custom_bottom_bar.dart';
import 'models/live_translation_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/live_translation_provider.dart';

class LiveTranslationScreen extends StatefulWidget {
  const LiveTranslationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LiveTranslationScreenState createState() => LiveTranslationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LiveTranslationProvider(),
      child: LiveTranslationScreen(),
    );
  }
}

class LiveTranslationScreenState extends State<LiveTranslationScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                height: 20.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                ),
              ),
              SizedBox(height: 96.v),
              Text(
                "msg_choose_from_the".tr,
                style: CustomTextStyles.headlineSmallGray900_1,
              ),
              SizedBox(height: 37.v),
              CustomElevatedButton(
                height: 54.v,
                text: "lbl_text".tr,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                buttonTextStyle: CustomTextStyles.titleLargeDubai,
              ),
              SizedBox(height: 50.v),
              _buildTextSpeech(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_learn".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildTextSpeech(BuildContext context) {
    return SizedBox(
      height: 54.v,
      width: 361.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFull,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 11.v,
              right: 20.h,
            ),
          ),
          CustomElevatedButton(
            height: 54.v,
            width: 361.h,
            text: "lbl_text_speech".tr,
            buttonTextStyle: CustomTextStyles.titleLargeDubai,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
