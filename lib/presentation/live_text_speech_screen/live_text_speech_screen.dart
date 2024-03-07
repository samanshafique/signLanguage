import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'package:saeed_s_application3/widgets/custom_outlined_button.dart';
import 'package:saeed_s_application3/widgets/custom_icon_button.dart';
import 'package:saeed_s_application3/widgets/custom_bottom_bar.dart';
import 'models/live_text_speech_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/live_text_speech_provider.dart';

class LiveTextSpeechScreen extends StatefulWidget {
  const LiveTextSpeechScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LiveTextSpeechScreenState createState() => LiveTextSpeechScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LiveTextSpeechProvider(),
      child: LiveTextSpeechScreen(),
    );
  }
}

class LiveTextSpeechScreenState extends State<LiveTextSpeechScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 809.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage8779x393,
                height: 779.v,
                width: 393.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(
                        children: [
                          _buildYesSave(context),
                          SizedBox(height: 35.v),
                          _buildNinetyNine(context),
                          SizedBox(height: 25.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgContrastBlueGray10001,
                            height: 72.adaptSize,
                            width: 72.adaptSize,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildYesSave(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 246.h,
            margin: EdgeInsets.only(
              left: 30.h,
              right: 34.h,
            ),
            child: Text(
              "msg_do_you_want_to_end".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.headlineSmallLightblueA700,
            ),
          ),
          SizedBox(height: 29.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    height: 40.v,
                    text: "lbl_yes_save".tr,
                    margin: EdgeInsets.only(right: 22.h),
                    buttonStyle: CustomButtonStyles.outlinePrimary,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumMontserratWhiteA700,
                  ),
                ),
                Expanded(
                  child: CustomElevatedButton(
                    height: 40.v,
                    text: "lbl_yes".tr,
                    margin: EdgeInsets.only(left: 22.h),
                    buttonStyle: CustomButtonStyles.outlinePrimary,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumMontserratWhiteA700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 33.v),
          CustomOutlinedButton(
            text: "lbl_cancel".tr,
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyNine(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup8818,
            height: 37.v,
            width: 237.h,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 4.v,
            ),
          ),
          Container(
            height: 44.v,
            width: 33.h,
            margin: EdgeInsets.only(
              right: 3.h,
              bottom: 2.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomIconButton(
                  height: 33.adaptSize,
                  width: 33.adaptSize,
                  alignment: Alignment.center,
                  child: CustomImageView(),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_t".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                ),
              ],
            ),
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
