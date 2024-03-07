import 'package:saeed_s_application3/widgets/custom_icon_button.dart';
import 'package:saeed_s_application3/widgets/custom_bottom_bar.dart';
import 'package:saeed_s_application3/widgets/custom_floating_button.dart';
import 'models/video_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';
import 'provider/video_provider.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  VideoScreenState createState() => VideoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VideoProvider(),
      child: VideoScreen(),
    );
  }
}

class VideoScreenState extends State<VideoScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 813.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUnsplashKwrnwbe87ey692x393,
                height: 692.v,
                width: 393.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 23.v),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 16.h),
                            child: CustomIconButton(
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              padding: EdgeInsets.all(8.h),
                              decoration: IconButtonStyleHelper.fillGrayTL12,
                              alignment: Alignment.centerRight,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgBookmark,
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 67,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 125.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgContrastWhiteA700,
                                  height: 23.v,
                                  width: 21.h,
                                  margin: EdgeInsets.only(
                                    top: 6.v,
                                    bottom: 5.v,
                                  ),
                                ),
                                Spacer(
                                  flex: 50,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgStopFill,
                                  height: 36.adaptSize,
                                  width: 36.adaptSize,
                                ),
                                Spacer(
                                  flex: 50,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup8810,
                                  height: 23.v,
                                  width: 21.h,
                                  margin: EdgeInsets.only(
                                    top: 6.v,
                                    bottom: 5.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(
                            flex: 32,
                          ),
                          _buildVideoPlay(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildVideoPlay(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillLightBlueA,
      child: Row(
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillLightBlueATL12,
            child: CustomImageView(
              imagePath: ImageConstant.imgLessonScreenPlay,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 2.h,
              top: 16.v,
              bottom: 16.v,
            ),
            decoration: AppDecoration.fillBlue50.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder4,
            ),
            child: Container(
              height: 8.v,
              width: 16.h,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
            ),
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

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 40,
      width: 40,
      backgroundColor: appTheme.lightBlueA700,
      child: CustomImageView(
        imagePath: ImageConstant.imgLessonScreenFull,
        height: 20.0.v,
        width: 20.0.h,
      ),
    );
  }
}
