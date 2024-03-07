import 'package:saeed_s_application3/core/utils/validation_functions.dart';
import 'package:saeed_s_application3/widgets/custom_text_form_field.dart';
import 'package:saeed_s_application3/widgets/custom_elevated_button.dart';
import 'package:saeed_s_application3/widgets/custom_bottom_bar.dart';
import 'models/support_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/support_provider.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SupportScreenState createState() => SupportScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SupportProvider(),
      child: SupportScreen(),
    );
  }
}

class SupportScreenState extends State<SupportScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
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
                    SizedBox(height: 9.v),
                    SizedBox(
                      width: 84.h,
                      child: Text(
                        "lbl_support".tr,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.headlineSmall!.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.v),
                    _buildEmail(context),
                    SizedBox(height: 9.v),
                    _buildEmail1(context),
                    SizedBox(height: 10.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_description".tr,
                          style: CustomTextStyles.bodyMediumDubaiGray900,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Selector<SupportProvider, TextEditingController?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.eightyFourController,
                        builder: (context, eightyFourController, child) {
                          return CustomTextFormField(
                            controller: eightyFourController,
                            hintText: "msg_write_your_text".tr,
                            hintStyle: CustomTextStyles.bodyMediumDubai,
                            textInputAction: TextInputAction.done,
                            maxLines: 7,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 19.v,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 38.v),
                    CustomElevatedButton(
                      text: "lbl_send".tr,
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_email".tr,
            style: CustomTextStyles.bodyMediumDubaiGray900,
          ),
          Selector<SupportProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.emailController,
            builder: (context, emailController, child) {
              return CustomTextFormField(
                controller: emailController,
                hintText: "msg_email_example_com".tr,
                hintStyle: CustomTextStyles.bodyMediumDubai,
                textInputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_email".tr;
                  }
                  return null;
                },
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 10.v,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_issue".tr,
            style: CustomTextStyles.bodyMediumDubaiGray900,
          ),
          Selector<SupportProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.inputController,
            builder: (context, inputController, child) {
              return CustomTextFormField(
                controller: inputController,
                hintText: "msg_title_of_the_query".tr,
                hintStyle: CustomTextStyles.bodyMediumDubai,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 10.v,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
