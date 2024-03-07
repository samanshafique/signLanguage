import 'package:saeed_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:saeed_s_application3/widgets/custom_bottom_bar.dart';
import 'models/learn_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/learn_provider.dart';

class LearnScreen extends StatefulWidget {
  const LearnScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LearnScreenState createState() => LearnScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LearnProvider(),
      child: LearnScreen(),
    );
  }
}

class LearnScreenState extends State<LearnScreen> {
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
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 20.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                  ),
                ),
                SizedBox(height: 68.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "msg_gary_morgan_bencie".tr,
                      style: CustomTextStyles.titleMediumLightblueA700,
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                Container(
                  width: 359.h,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    right: 17.h,
                  ),
                  child: Text(
                    "msg_sign_languages_have".tr,
                    maxLines: 29,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumDubaiGray600,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 9.v,
          bottom: 10.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_introduction".tr,
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
}
