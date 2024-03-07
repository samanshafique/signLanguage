import 'package:saeed_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:saeed_s_application3/widgets/custom_bottom_bar.dart';
import 'models/language_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/language_provider.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LanguageScreenState createState() => LanguageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LanguageProvider(),
      child: LanguageScreen(),
    );
  }
}

class LanguageScreenState extends State<LanguageScreen> {
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
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 328.h,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    right: 48.h,
                  ),
                  child: Text(
                    "msg_choose_the_language".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.headlineSmallGray900.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: _buildLanguageCard(
                  context,
                  television: ImageConstant.imgGrid,
                  title: "lbl_english".tr,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: _buildLanguageCard(
                  context,
                  television: ImageConstant.imgTelevisionPrimary,
                  title: "lbl_spain".tr,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: _buildLanguageCard(
                  context,
                  television: ImageConstant.imgBookmarkPrimary,
                  title: "lbl_french".tr,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: _buildLanguageCard(
                  context,
                  television: ImageConstant.imgThumbsUp,
                  title: "lbl_belgian".tr,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: _buildLanguageCard(
                  context,
                  television: ImageConstant.imgClosePrimary,
                  title: "lbl_turkish".tr,
                ),
              ),
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
        text: "lbl_languages".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildLanguageCard(
    BuildContext context, {
    required String television,
    required String title,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineBluegray501.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: television,
            height: 24.v,
            width: 32.h,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 1.v,
            ),
            child: Text(
              title,
              style: CustomTextStyles.titleMediumGray900.copyWith(
                color: appTheme.gray900,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeft,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
        ],
      ),
    );
  }
}
