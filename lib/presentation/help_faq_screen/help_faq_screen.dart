import 'package:saeed_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:saeed_s_application3/core/utils/validation_functions.dart';
import 'package:saeed_s_application3/widgets/custom_text_form_field.dart';
import 'package:saeed_s_application3/widgets/custom_bottom_bar.dart';
import 'models/help_faq_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/help_faq_provider.dart';

class HelpFaqScreen extends StatefulWidget {
  const HelpFaqScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HelpFaqScreenState createState() => HelpFaqScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HelpFaqProvider(),
      child: HelpFaqScreen(),
    );
  }
}

class HelpFaqScreenState extends State<HelpFaqScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
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
                    SizedBox(height: 71.v),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: appTheme.lightBlueA70001,
                          width: 9.h,
                        ),
                        borderRadius: BorderRadiusStyle.circleBorder50,
                      ),
                      child: Container(
                        height: 100.adaptSize,
                        width: 100.adaptSize,
                        padding: EdgeInsets.symmetric(
                          horizontal: 7.h,
                          vertical: 20.v,
                        ),
                        decoration:
                            AppDecoration.outlineLightblueA70001.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder50,
                        ),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                width: 54.h,
                                margin: EdgeInsets.only(right: 1.h),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_sign".tr,
                                        style: CustomTextStyles
                                            .titleMediumff6e6e6e,
                                      ),
                                      TextSpan(
                                        text: "lbl_vox".tr,
                                        style: CustomTextStyles
                                            .titleMediumff0073f1,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                height: 40.v,
                                width: 18.h,
                                child: CircularProgressIndicator(
                                  value: 0.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Selector<HelpFaqProvider, TextEditingController?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.descriptionController,
                        builder: (context, descriptionController, child) {
                          return CustomTextFormField(
                            controller: descriptionController,
                            hintText: "msg_welcome_to_signvox2".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_email".tr;
                              }
                              return null;
                            },
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 3.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.outlineBlueGrayTL12,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "msg_frequently_asked".tr,
                          style: CustomTextStyles.headlineSmallGray900_1,
                        ),
                      ),
                    ),
                    SizedBox(height: 9.v),
                    _buildSeventyFour(context),
                    SizedBox(height: 14.v),
                    _buildHowDoesSignVox(context),
                    SizedBox(height: 13.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.h),
                      child: _buildSeventy(
                        context,
                        titletextofQuestiononelinewill:
                            "msg_title_text_of_question".tr,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.h),
                      child: _buildSeventy(
                        context,
                        titletextofQuestiononelinewill:
                            "msg_title_text_of_question".tr,
                      ),
                    ),
                  ],
                ),
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
        text: "lbl_help_faq".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildSeventyFour(BuildContext context) {
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
        height: 144.v,
        width: 361.h,
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 13.v,
        ),
        decoration: AppDecoration.outlineBluegray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 326.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_1_what_is_sign".tr,
                        style: CustomTextStyles.titleMediumff000000,
                      ),
                      TextSpan(
                        text: "lbl_vox".tr,
                        style: CustomTextStyles.titleMediumff007aff,
                      ),
                      TextSpan(
                        text: "msg_signvox_is_a_revolutionary".tr,
                        style: CustomTextStyles.titleMediumff000000.copyWith(
                          height: 1.13,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgStroke3,
              height: 6.v,
              width: 12.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 10.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHowDoesSignVox(BuildContext context) {
    return SizedBox();
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildSeventy(
    BuildContext context, {
    required String titletextofQuestiononelinewill,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBluegray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
              width: 256.h,
              margin: EdgeInsets.only(top: 1.v),
              child: Text(
                titletextofQuestiononelinewill,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: appTheme.gray60002,
                  height: 1.13,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownLightBlueA700,
            height: 6.v,
            width: 12.h,
            margin: EdgeInsets.only(
              left: 59.h,
              top: 11.v,
              bottom: 11.v,
            ),
          ),
        ],
      ),
    );
  }
}
