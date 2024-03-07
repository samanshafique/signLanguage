import 'package:saeed_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:saeed_s_application3/widgets/custom_search_view.dart';
import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'models/device_manage_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/device_manage_provider.dart';

class DeviceManageScreen extends StatefulWidget {
  const DeviceManageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DeviceManageScreenState createState() => DeviceManageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DeviceManageProvider(),
      child: DeviceManageScreen(),
    );
  }
}

class DeviceManageScreenState extends State<DeviceManageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 17.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                children: [
                  Selector<DeviceManageProvider, TextEditingController?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider.searchController,
                    builder: (context, searchController, child) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "lbl_add_device".tr,
                      );
                    },
                  ),
                  SizedBox(height: 8.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgPngkitMobileD,
                    height: 309.v,
                    width: 251.h,
                  ),
                  SizedBox(height: 82.v),
                  CustomElevatedButton(
                    height: 64.v,
                    text: "lbl_continue".tr,
                    buttonStyle: CustomButtonStyles.outlinePrimaryTL203,
                    buttonTextStyle: theme.textTheme.titleLarge!,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 62.v,
      leadingWidth: 66.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgArrowRight,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 2.v,
          bottom: 3.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_manage_devices".tr,
      ),
    );
  }
}
