import 'package:saeed_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:saeed_s_application3/widgets/custom_bottom_bar.dart';
import 'models/saved_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/saved_provider.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SavedScreenState createState() => SavedScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SavedProvider(),
      child: SavedScreen(),
    );
  }
}

class SavedScreenState extends State<SavedScreen> {
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: _buildNinetySix(
                  context,
                  title: "msg_translate_text_of".tr,
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: _buildNinetySix(
                  context,
                  title: "msg_translate_text_of".tr,
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: _buildNinetySix(
                  context,
                  title: "msg_translate_text_of".tr,
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: _buildNinetySix(
                  context,
                  title: "msg_translate_text_of".tr,
                ),
              ),
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
        text: "lbl_saved".tr,
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
  Widget _buildNinetySix(
    BuildContext context, {
    required String title,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.outlineBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBookmarkLightBlueA700,
            height: 26.v,
            width: 20.h,
            margin: EdgeInsets.only(
              left: 1.h,
              top: 6.v,
              bottom: 7.v,
            ),
          ),
          Expanded(
            child: Container(
              width: 249.h,
              margin: EdgeInsets.only(
                left: 30.h,
                bottom: 1.v,
              ),
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: appTheme.gray60002,
                  height: 1.13,
                ),
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgVector9LightBlueA700,
            height: 10.v,
            width: 4.h,
            margin: EdgeInsets.only(
              top: 14.v,
              bottom: 15.v,
            ),
          ),
        ],
      ),
    );
  }
}
