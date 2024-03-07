import '../models/home_item_model.dart';
import 'package:saeed_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(
    this.homeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomeItemModel homeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 223.v,
      width: 305.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: homeItemModelObj?.unsplashKWrNwBEEY,
            height: 223.v,
            width: 305.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 14.h),
                  child: CustomIconButton(
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                    padding: EdgeInsets.all(2.h),
                    decoration: IconButtonStyleHelper.fillGray,
                    alignment: Alignment.centerRight,
                    child: CustomImageView(
                      imagePath: homeItemModelObj?.bookmark,
                    ),
                  ),
                ),
                SizedBox(height: 137.v),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  decoration: AppDecoration.fillLightBlueA.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration: IconButtonStyleHelper.fillLightBlueATL12,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgLessonScreenPlay,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 16.v),
                        decoration: AppDecoration.fillBlue50.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder4,
                        ),
                        child: Container(
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(
                              8.h,
                            ),
                          ),
                        ),
                      ),
                      CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration: IconButtonStyleHelper.fillLightBlueATL12,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgLessonScreenFull,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
