import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue70001,
      );
  static BoxDecoration get fillBlue50 => BoxDecoration(
        color: appTheme.blue50,
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray40002,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo900,
      );
  static BoxDecoration get fillLightBlueA => BoxDecoration(
        color: appTheme.lightBlueA700,
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.blueGray50,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineBluegray50 => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.blueGray50,
          width: 2.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineBluegray501 => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: appTheme.blueGray50,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineLightBlueA => BoxDecoration(
        border: Border.all(
          color: appTheme.lightBlueA70001,
          width: 18.h,
        ),
      );
  static BoxDecoration get outlineLightblueA700 => BoxDecoration(
        color: appTheme.lightBlueA700,
        border: Border.all(
          color: appTheme.lightBlueA700,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineLightblueA70001 => BoxDecoration(
        border: Border.all(
          color: appTheme.lightBlueA70001,
          width: 9.h,
        ),
      );
  static BoxDecoration get outlineLightblueA7001 => BoxDecoration(
        color: appTheme.blue50,
        border: Border.all(
          color: appTheme.lightBlueA700,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder23 => BorderRadius.circular(
        23.h,
      );
  static BorderRadius get circleBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get circleBorder64 => BorderRadius.circular(
        64.h,
      );
  static BorderRadius get circleBorder69 => BorderRadius.circular(
        69.h,
      );
  static BorderRadius get circleBorder85 => BorderRadius.circular(
        85.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL10 => BorderRadius.vertical(
        bottom: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL12 => BorderRadius.horizontal(
        left: Radius.circular(12.h),
      );
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    