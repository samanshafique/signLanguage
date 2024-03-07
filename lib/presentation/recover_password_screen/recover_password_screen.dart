import 'package:saeed_s_application3/widgets/custom_icon_button.dart';
import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'models/recover_password_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/recover_password_provider.dart';

class RecoverPasswordScreen extends StatefulWidget {
  const RecoverPasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RecoverPasswordScreenState createState() => RecoverPasswordScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RecoverPasswordProvider(),
      child: RecoverPasswordScreen(),
    );
  }
}

class RecoverPasswordScreenState extends State<RecoverPasswordScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onError,
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(8.h),
                        decoration: IconButtonStyleHelper.fillLightBlueA,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowDown,
                        ),
                      ),
                    ),
                    Container(
                      width: 182.h,
                      margin: EdgeInsets.only(left: 44.h),
                      child: Text(
                        "msg_recover_password".tr,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.headlineSmall!.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              Container(
                width: 316.h,
                margin: EdgeInsets.only(
                  left: 16.h,
                  right: 60.h,
                ),
                child: Text(
                  "msg_please_enter_your".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumPoppinsGray60002_1,
                ),
              ),
              SizedBox(height: 41.v),
              _buildEmail(context),
              SizedBox(height: 49.v),
              CustomElevatedButton(
                text: "lbl_send".tr,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                alignment: Alignment.center,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_phone".tr,
              style: CustomTextStyles.bodyMediumDubaiGray900,
            ),
            Container(
              decoration: AppDecoration.outlineBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 65.h,
                    padding: EdgeInsets.symmetric(vertical: 13.v),
                    decoration: AppDecoration.outlineLightblueA700.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPakistan,
                          height: 16.v,
                          width: 22.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 4.v,
                          width: 6.h,
                          margin: EdgeInsets.symmetric(vertical: 6.v),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      bottom: 2.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_phone_number".tr,
                          style: CustomTextStyles.bodySmallDubaiGray40003,
                        ),
                        Text(
                          "msg_92_000_0000_0000".tr,
                          style: CustomTextStyles.bodyMediumDubai,
                        ),
                      ],
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
