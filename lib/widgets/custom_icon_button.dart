import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(23.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillLightBlueA => BoxDecoration(
        color: appTheme.lightBlueA70001,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillLightBlueATL18 => BoxDecoration(
        color: appTheme.lightBlueA700,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.blue700,
        borderRadius: BorderRadius.circular(21.h),
        border: Border.all(
          color: appTheme.whiteA700,
          width: 3.h,
        ),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillLightBlueATL12 => BoxDecoration(
        color: appTheme.lightBlueA700,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillLightBlueATL8 => BoxDecoration(
        color: appTheme.lightBlueA700,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillGrayTL12 => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get outlineLightBlueA => BoxDecoration(
        color: appTheme.blueGray10001,
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(
          color: appTheme.lightBlueA700,
          width: 2.h,
        ),
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen500,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get outlineLightGreen => BoxDecoration(
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(
          color: appTheme.lightGreen500,
          width: 2.h,
        ),
      );
}
