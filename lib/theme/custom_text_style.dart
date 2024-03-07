import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/utils/size_utils.dart';
import 'package:saeed_s_application3/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeDubaiGray60002 =>
      theme.textTheme.bodyLarge!.dubai.copyWith(
        color: appTheme.gray60002,
      );
  static get bodyLargeDubaiGray900 => theme.textTheme.bodyLarge!.dubai.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeDubaiLightblueA700 =>
      theme.textTheme.bodyLarge!.dubai.copyWith(
        color: appTheme.lightBlueA700,
      );
  static get bodyLargeDubaiLightblueA70001 =>
      theme.textTheme.bodyLarge!.dubai.copyWith(
        color: appTheme.lightBlueA70001,
        fontSize: 18.fSize,
      );
  static get bodyMediumDubai => theme.textTheme.bodyMedium!.dubai;
  static get bodyMediumDubaiGray600 =>
      theme.textTheme.bodyMedium!.dubai.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumDubaiGray60002 =>
      theme.textTheme.bodyMedium!.dubai.copyWith(
        color: appTheme.gray60002,
      );
  static get bodyMediumDubaiGray900 =>
      theme.textTheme.bodyMedium!.dubai.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumDubaiLightblueA700 =>
      theme.textTheme.bodyMedium!.dubai.copyWith(
        color: appTheme.lightBlueA700,
      );
  static get bodyMediumDubaiLightblueA700_1 =>
      theme.textTheme.bodyMedium!.dubai.copyWith(
        color: appTheme.lightBlueA700,
      );
  static get bodyMediumDubaiPrimary =>
      theme.textTheme.bodyMedium!.dubai.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodyMediumLightblueA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.lightBlueA700,
      );
  static get bodyMediumPoppinsGray60002 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray60002,
      );
  static get bodyMediumPoppinsGray60002_1 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray60002,
      );
  static get bodyMediumPoppinsff80807f =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: Color(0XFF80807F),
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodySmallDubaiGray40003 =>
      theme.textTheme.bodySmall!.dubai.copyWith(
        color: appTheme.gray40003,
        fontSize: 12.fSize,
      );
  // Headline text style
  static get headlineLargePoppinsIndigo900 =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargePoppinsIndigo900SemiBold =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.indigo900,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumPrimary => theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 29.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumff0073f1 => theme.textTheme.headlineMedium!.copyWith(
        color: Color(0XFF0073F1),
        fontSize: 29.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumff6e6e6e => theme.textTheme.headlineMedium!.copyWith(
        color: Color(0XFF6E6E6E),
        fontSize: 29.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallGray900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallGray900_1 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get headlineSmallLightblueA700 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.lightBlueA700,
      );
  static get headlineSmallMedium => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get headlineSmallff0073f1 => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF0073F1),
      );
  static get headlineSmallff007aff => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF007AFF),
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallff121212 => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF121212),
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallff6e6e6e => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF6E6E6E),
      );
  // Label text style
  static get labelSmallWhiteA700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleLargeDMSansBlue300 =>
      theme.textTheme.titleLarge!.dMSans.copyWith(
        color: appTheme.blue300,
        fontSize: 21.fSize,
      );
  static get titleLargeDubai => theme.textTheme.titleLarge!.dubai;
  static get titleLargeDubaiGray60002 =>
      theme.textTheme.titleLarge!.dubai.copyWith(
        color: appTheme.gray60002,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeDubaiGray60002Medium =>
      theme.textTheme.titleLarge!.dubai.copyWith(
        color: appTheme.gray60002,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeDubaiLightblueA70001 =>
      theme.textTheme.titleLarge!.dubai.copyWith(
        color: appTheme.lightBlueA70001,
      );
  static get titleLargeDubaiOnSecondaryContainer =>
      theme.textTheme.titleLarge!.dubai.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeDubai_1 => theme.textTheme.titleLarge!.dubai;
  static get titleLargePoppins => theme.textTheme.titleLarge!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargePoppinsGray60002 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.gray60002,
        fontWeight: FontWeight.w500,
      );
  static get titleLargePoppinsPrimary =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRobotoPrimary =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
      );
  static get titleMediumGray90018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
      );
  static get titleMediumGray900Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumLightblueA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightBlueA700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumLightblueA70001 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightBlueA70001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMontserratPrimary =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMontserratWhiteA700 =>
      theme.textTheme.titleMedium!.montserrat.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleMediumff000000 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumff0073f1 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF0073F1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumff007aff => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF007AFF),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumff6e6e6e => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF6E6E6E),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallDubaiGray40003 =>
      theme.textTheme.titleSmall!.dubai.copyWith(
        color: appTheme.gray40003,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallDubaiGray60002 =>
      theme.textTheme.titleSmall!.dubai.copyWith(
        color: appTheme.gray60002,
      );
  static get titleSmallDubaiGray900 =>
      theme.textTheme.titleSmall!.dubai.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray40001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40001,
      );
  static get titleSmallGreen700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGreen700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green700,
      );
  static get titleSmallIndigo900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo900,
      );
  static get titleSmallPoppinsff529744 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: Color(0XFF529744),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallRobotoGray60001 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray60001,
      );
  static get titleSmallff479037 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF479037),
      );
}

extension on TextStyle {
  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get mulish {
    return copyWith(
      fontFamily: 'Mulish',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get dubai {
    return copyWith(
      fontFamily: 'Dubai',
    );
  }
}
