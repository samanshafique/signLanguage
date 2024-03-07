import 'package:saeed_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:saeed_s_application3/widgets/custom_icon_button.dart';
import 'package:saeed_s_application3/widgets/custom_bottom_bar.dart';
import 'models/live_text_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/live_text_provider.dart';

class LiveTextScreen extends StatefulWidget {
  const LiveTextScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LiveTextScreenState createState() => LiveTextScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LiveTextProvider(),
      child: LiveTextScreen(),
    );
  }
}

class LiveTextScreenState extends State<LiveTextScreen> {
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
              SizedBox(height: 70.v),
              _buildContrast(context),
              SizedBox(height: 10.v),
              _buildTitle(context),
              SizedBox(height: 13.v),
              _buildView(context),
              SizedBox(height: 4.v),
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
  Widget _buildContrast(BuildContext context) {
    return SizedBox(
      height: 424.v,
      width: 361.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage8,
            height: 393.v,
            width: 361.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 375.v),
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillLightBlueA.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgContrastBlueGray10001,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    margin: EdgeInsets.only(
                      left: 3.h,
                      top: 1.v,
                    ),
                  ),
                  Container(
                    height: 26.v,
                    width: 20.h,
                    margin: EdgeInsets.only(top: 1.v),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgBookmarkWhiteA700,
                          height: 26.v,
                          width: 20.h,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPlus,
                          height: 9.v,
                          width: 10.h,
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 6.v),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 220.h,
            child: Text(
              "msg_yes_its_good_if".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleLargeDubaiGray60002,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(69.h, 10.v, 1.h, 11.v),
            child: CustomIconButton(
              height: 37.v,
              width: 36.h,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.fillLightBlueATL18,
              child: CustomImageView(
                imagePath: ImageConstant.imgUserWhiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
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
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 33.adaptSize,
                    width: 33.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.lightBlueA700,
                      borderRadius: BorderRadius.circular(
                        10.h,
                      ),
                    ),
                  ),
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
