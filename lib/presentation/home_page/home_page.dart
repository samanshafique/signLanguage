import 'package:saeed_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:saeed_s_application3/widgets/custom_icon_button.dart';
import 'widgets/home_item_widget.dart';
import 'models/home_item_model.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/home_provider.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: HomePage(),
    );
  }
}

class HomePageState extends State<HomePage> {
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
                SizedBox(height: 20.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "lbl_explore".tr,
                      style: CustomTextStyles.headlineSmallGray900_1,
                    ),
                  ),
                ),
                SizedBox(height: 13.v),
                _buildManInFormalwear(context),
                SizedBox(height: 13.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "msg_recommended_videos".tr,
                      style: CustomTextStyles.headlineSmallGray900_1,
                    ),
                  ),
                ),
                SizedBox(height: 15.v),
                _buildHome(context),
                SizedBox(height: 16.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "msg_recommended_readings".tr,
                      style: CustomTextStyles.headlineSmallGray900_1,
                    ),
                  ),
                ),
                SizedBox(height: 13.v),
                _buildWVVMDhWfLOne(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 28.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgContrast,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 18.v,
          bottom: 18.v,
        ),
      ),
      title: Container(
        width: 82.h,
        margin: EdgeInsets.only(left: 2.h),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_sign".tr,
                style: CustomTextStyles.headlineSmallff6e6e6e,
              ),
              TextSpan(
                text: "lbl_vox".tr,
                style: CustomTextStyles.headlineSmallff0073f1,
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgIconBell,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 11.v,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildManInFormalwear(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgManInFormalwear,
            height: 136.v,
            width: 81.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 4.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 26.v,
              right: 7.h,
            ),
            child: Column(
              children: [
                CustomIconButton(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  padding: EdgeInsets.all(3.h),
                  decoration: IconButtonStyleHelper.outlineWhiteA,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMenu,
                  ),
                ),
                SizedBox(height: 20.v),
                SizedBox(
                  width: 216.h,
                  child: Text(
                    "msg_live_translation".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleLargeDubai.copyWith(
                      height: 1.20,
                    ),
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
  Widget _buildHome(BuildContext context) {
    return SizedBox(
      height: 223.v,
      child: Consumer<HomeProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 14.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 18.h,
              );
            },
            itemCount: provider.homeModelObj.homeItemList.length,
            itemBuilder: (context, index) {
              HomeItemModel model = provider.homeModelObj.homeItemList[index];
              return HomeItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildWVVMDhWfLOne(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 14.h),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img71wvvmdhwfl1,
              height: 350.v,
              width: 260.h,
              radius: BorderRadius.circular(
                10.h,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.img41dhdtofyzl1,
              height: 350.v,
              width: 260.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.only(left: 16.h),
            ),
          ],
        ),
      ),
    );
  }
}
