import 'package:saeed_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:saeed_s_application3/widgets/custom_bottom_bar.dart';
import 'models/learn_one_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/learn_one_provider.dart';

class LearnOneScreen extends StatefulWidget {
  const LearnOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LearnOneScreenState createState() => LearnOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LearnOneProvider(),
      child: LearnOneScreen(),
    );
  }
}

class LearnOneScreenState extends State<LearnOneScreen> {
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
              _buildEightyOne(context),
              SizedBox(height: 10.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "msg_title_text_will".tr,
                    style: CustomTextStyles.headlineSmallGray900_1,
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              Container(
                width: 359.h,
                margin: EdgeInsets.only(
                  left: 16.h,
                  right: 17.h,
                ),
                child: Text(
                  "msg_description_will".tr,
                  maxLines: 11,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumDubaiGray60002.copyWith(
                    height: 1.71,
                  ),
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
        text: "lbl_learn".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildEightyOne(BuildContext context) {
    return SizedBox(
      height: 265.v,
      width: 362.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashKwrnwbe87ey,
            height: 265.v,
            width: 362.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 110.h,
                right: 21.h,
                bottom: 21.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 89.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgContrastWhiteA700,
                          height: 23.v,
                          width: 21.h,
                          margin: EdgeInsets.only(
                            top: 6.v,
                            bottom: 5.v,
                          ),
                        ),
                        Spacer(
                          flex: 50,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgStopFill,
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                        ),
                        Spacer(
                          flex: 50,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup8810,
                          height: 23.v,
                          width: 21.h,
                          margin: EdgeInsets.only(
                            top: 6.v,
                            bottom: 5.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 70.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgFull,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.centerRight,
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
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
