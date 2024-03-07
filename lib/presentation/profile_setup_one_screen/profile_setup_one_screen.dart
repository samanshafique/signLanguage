import 'package:saeed_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'package:saeed_s_application3/widgets/custom_bottom_bar.dart';
import 'models/profile_setup_one_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/profile_setup_one_provider.dart';

class ProfileSetupOneScreen extends StatefulWidget {
  const ProfileSetupOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileSetupOneScreenState createState() => ProfileSetupOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileSetupOneProvider(),
      child: ProfileSetupOneScreen(),
    );
  }
}

class ProfileSetupOneScreenState extends State<ProfileSetupOneScreen> {
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
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
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
                  SizedBox(
                    height: 139.v,
                    width: 124.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 139.v,
                            width: 124.h,
                            decoration: BoxDecoration(
                              color: appTheme.blue800,
                              borderRadius: BorderRadius.circular(
                                69.h,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMaskGroup,
                          height: 134.v,
                          width: 120.h,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Text(
                    "lbl_alex_marshall".tr,
                    style: CustomTextStyles.titleLargeRobotoPrimary,
                  ),
                  SizedBox(height: 13.v),
                  Text(
                    "lbl_alex_marshall2".tr,
                    style: CustomTextStyles.titleSmallRobotoGray60001,
                  ),
                  SizedBox(height: 33.v),
                  CustomElevatedButton(
                    text: "lbl_edit_profile".tr,
                    margin: EdgeInsets.only(
                      left: 14.h,
                      right: 16.h,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Divider(
                    color: appTheme.gray300,
                    indent: 17.h,
                    endIndent: 16.h,
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      right: 19.h,
                    ),
                    child: _buildUser(
                      context,
                      user: ImageConstant.imgSettingsLightBlueA700,
                      myActivities: "msg_profile_information".tr,
                    ),
                  ),
                  SizedBox(height: 28.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      right: 19.h,
                    ),
                    child: _buildUser(
                      context,
                      user: ImageConstant.imgUserLightBlueA700,
                      myActivities: "lbl_my_activities".tr,
                    ),
                  ),
                  SizedBox(height: 30.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      right: 19.h,
                    ),
                    child: _buildHelpFAQS(
                      context,
                      image: ImageConstant.imgLineEditorTranslate2,
                      helpFAQS: "lbl_language".tr,
                    ),
                  ),
                  SizedBox(height: 27.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      right: 19.h,
                    ),
                    child: _buildHelpFAQS(
                      context,
                      image: ImageConstant.imgLineUserContactsLine,
                      helpFAQS: "lbl_help_faq_s".tr,
                    ),
                  ),
                  SizedBox(height: 28.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      right: 19.h,
                    ),
                    child: _buildHelpFAQS(
                      context,
                      image: ImageConstant.imgSettingsLightBlueA70026x24,
                      helpFAQS: "lbl_support".tr,
                    ),
                  ),
                  SizedBox(height: 27.v),
                  _buildSearch(context),
                  SizedBox(height: 37.v),
                  CustomElevatedButton(
                    text: "lbl_sign_out".tr,
                    margin: EdgeInsets.only(
                      left: 14.h,
                      right: 18.h,
                    ),
                    rightIcon: Container(
                      margin: EdgeInsets.only(left: 26.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUserWhiteA70024x24,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                  ),
                ],
              ),
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
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_profile".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 13.h,
        right: 19.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSearch,
                height: 26.v,
                width: 24.h,
                margin: EdgeInsets.only(bottom: 2.v),
              ),
              Container(
                width: 49.h,
                margin: EdgeInsets.only(left: 29.h),
                child: Text(
                  "lbl_setting".tr,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleMediumPrimary_1.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector9,
            height: 4.v,
            width: 10.h,
            margin: EdgeInsets.only(
              top: 10.v,
              bottom: 14.v,
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

  /// Common widget
  Widget _buildUser(
    BuildContext context, {
    required String user,
    required String myActivities,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: user,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(bottom: 3.v),
        ),
        Container(
          width: 87.h,
          margin: EdgeInsets.only(left: 29.h),
          child: Text(
            myActivities,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleMediumPrimary_1.copyWith(
              color: theme.colorScheme.primary.withOpacity(1),
              height: 1.50,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgVector9,
          height: 4.v,
          width: 10.h,
          margin: EdgeInsets.only(
            top: 9.v,
            bottom: 14.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildHelpFAQS(
    BuildContext context, {
    required String image,
    required String helpFAQS,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: image,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(bottom: 2.v),
        ),
        Container(
          width: 88.h,
          margin: EdgeInsets.only(left: 28.h),
          child: Text(
            helpFAQS,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleMediumPrimary_1.copyWith(
              color: theme.colorScheme.primary.withOpacity(1),
              height: 1.50,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgVector9,
          height: 4.v,
          width: 10.h,
          margin: EdgeInsets.only(
            top: 10.v,
            bottom: 12.v,
          ),
        ),
      ],
    );
  }
}
