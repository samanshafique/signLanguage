import 'package:saeed_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:saeed_s_application3/widgets/custom_bottom_bar.dart';
import 'models/saved_translation_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/saved_translation_provider.dart';

class SavedTranslationScreen extends StatefulWidget {
  const SavedTranslationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SavedTranslationScreenState createState() => SavedTranslationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SavedTranslationProvider(),
      child: SavedTranslationScreen(),
    );
  }
}

class SavedTranslationScreenState extends State<SavedTranslationScreen> {
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
              SizedBox(height: 69.v),
              _buildBookmark(context),
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "msg_transcode_speech".tr,
                    style: CustomTextStyles.headlineSmallGray900_1,
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              _buildFrame(context),
              SizedBox(height: 4.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "msg_saved_translation".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildBookmark(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: appTheme.gray50,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.blueGray50,
          width: 2.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Container(
        height: 394.v,
        width: 361.h,
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.outlineBluegray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgBookmarkLightBlueA700,
              height: 26.v,
              width: 20.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(
                right: 3.h,
                bottom: 6.v,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 341.h,
                child: Text(
                  "msg_english_translate".tr,
                  maxLines: 19,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallDubaiGray60002.copyWith(
                    height: 1.29,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.symmetric(vertical: 23.v),
      decoration: AppDecoration.outlineBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStopFillLightBlueA700,
            height: 36.adaptSize,
            width: 36.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup8818,
            height: 26.v,
            width: 171.h,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          Container(
            height: 24.v,
            width: 52.h,
            margin: EdgeInsets.symmetric(vertical: 6.v),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_00_50".tr,
                    style: CustomTextStyles.bodyMediumDubaiLightblueA700,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 20.v,
                    width: 52.h,
                    margin: EdgeInsets.only(top: 1.v),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.h,
                      ),
                      border: Border.all(
                        color: appTheme.lightBlueA700,
                        width: 2.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBookmarkLightBlueA700,
            height: 26.v,
            width: 20.h,
            margin: EdgeInsets.symmetric(vertical: 5.v),
          ),
        ],
      ),
    );
  }
}
