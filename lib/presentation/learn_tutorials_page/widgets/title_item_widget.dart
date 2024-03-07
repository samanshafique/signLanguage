import '../models/title_item_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class TitleItemWidget extends StatelessWidget {
  TitleItemWidget(
    this.titleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TitleItemModel titleItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 6.v,
        ),
        decoration: AppDecoration.outlineBluegray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 94.v,
              width: 118.h,
              margin: EdgeInsets.only(bottom: 1.v),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: titleItemModelObj?.image,
                    height: 94.v,
                    width: 118.h,
                    radius: BorderRadius.circular(
                      20.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgOverflowMenu,
                    height: 15.v,
                    width: 13.h,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 3.h,
                bottom: 6.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleItemModelObj.title!,
                    style: CustomTextStyles.titleMediumGray90018,
                  ),
                  SizedBox(height: 2.v),
                  SizedBox(
                    width: 199.h,
                    child: Text(
                      titleItemModelObj.title1!,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumDubaiGray60002.copyWith(
                        height: 1.29,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
