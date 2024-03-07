import 'models/query_successfully_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/query_successfully_provider.dart';

class QuerySuccessfullyScreen extends StatefulWidget {
  const QuerySuccessfullyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  QuerySuccessfullyScreenState createState() => QuerySuccessfullyScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuerySuccessfullyProvider(),
      child: QuerySuccessfullyScreen(),
    );
  }
}

class QuerySuccessfullyScreenState extends State<QuerySuccessfullyScreen> {
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
            children: [
              Container(
                height: 20.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onError,
                ),
              ),
              Spacer(
                flex: 39,
              ),
              Container(
                height: 138.adaptSize,
                width: 138.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 32.h,
                  vertical: 39.v,
                ),
                decoration: AppDecoration.fillLightBlueA.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder69,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 59.v,
                  width: 73.h,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 28.v),
              SizedBox(
                width: 214.h,
                child: Text(
                  "msg_query_has_been_sent".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    height: 1.33,
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              Container(
                width: 326.h,
                margin: EdgeInsets.symmetric(horizontal: 33.h),
                child: Text(
                  "msg_thanks_for_submitting".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style:
                      CustomTextStyles.titleLargeDubaiGray60002Medium.copyWith(
                    height: 1.60,
                  ),
                ),
              ),
              Spacer(
                flex: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
