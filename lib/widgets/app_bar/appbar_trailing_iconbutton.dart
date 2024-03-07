import 'package:saeed_s_application3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbutton extends StatelessWidget {
  AppbarTrailingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 50.adaptSize,
          width: 50.adaptSize,
          decoration: IconButtonStyleHelper.fillLightBlueATL18,
          child: CustomImageView(
            imagePath: ImageConstant.imgIconBell,
          ),
        ),
      ),
    );
  }
}
