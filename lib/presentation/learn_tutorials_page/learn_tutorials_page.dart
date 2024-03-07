import 'package:saeed_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:saeed_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:saeed_s_application3/widgets/custom_search_view.dart';
import 'widgets/title_item_widget.dart';
import 'models/title_item_model.dart';
import 'models/learn_tutorials_model.dart';
import 'widgets/wvvmdhwfl_item_widget.dart';
import 'models/wvvmdhwfl_item_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/learn_tutorials_provider.dart';

// ignore_for_file: must_be_immutable
class LearnTutorialsPage extends StatefulWidget {
  const LearnTutorialsPage({Key? key})
      : super(
          key: key,
        );

  @override
  LearnTutorialsPageState createState() => LearnTutorialsPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LearnTutorialsProvider(),
      child: LearnTutorialsPage(),
    );
  }
}

class LearnTutorialsPageState extends State<LearnTutorialsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                  ),
                ),
                SizedBox(height: 70.v),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Selector<LearnTutorialsProvider,
                        TextEditingController?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.searchController,
                      builder: (context, searchController, child) {
                        return CustomSearchView(
                          controller: searchController,
                          hintText: "lbl_search".tr,
                          hintStyle: CustomTextStyles.titleSmallDubaiGray40003,
                          alignment: Alignment.center,
                          contentPadding: EdgeInsets.only(
                            left: 15.h,
                            top: 10.v,
                            bottom: 10.v,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 1.v),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "msg_recently_watched".tr,
                    style: CustomTextStyles.headlineSmallGray900_1,
                  ),
                ),
                SizedBox(height: 12.v),
                _buildTitle(context),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "lbl_recents_reads".tr,
                    style: CustomTextStyles.headlineSmallGray900_1,
                  ),
                ),
                SizedBox(height: 21.v),
                _buildWVVMDhWfL(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_learn".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Consumer<LearnTutorialsProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 22.v,
                );
              },
              itemCount: provider.learnTutorialsModelObj.titleItemList.length,
              itemBuilder: (context, index) {
                TitleItemModel model =
                    provider.learnTutorialsModelObj.titleItemList[index];
                return TitleItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWVVMDhWfL(BuildContext context) {
    return SizedBox(
      height: 350.v,
      child: Consumer<LearnTutorialsProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 1.h,
              );
            },
            itemCount: provider.learnTutorialsModelObj.wvvmdhwflItemList.length,
            itemBuilder: (context, index) {
              WvvmdhwflItemModel model =
                  provider.learnTutorialsModelObj.wvvmdhwflItemList[index];
              return WvvmdhwflItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
