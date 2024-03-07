import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      activeIcon: ImageConstant.imgUser,
      title: "lbl_live".tr,
      type: BottomBarEnum.Live,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBookmarkIndigo200,
      activeIcon: ImageConstant.imgBookmarkIndigo200,
      title: "lbl_live".tr,
      type: BottomBarEnum.Live,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVector135,
      activeIcon: ImageConstant.imgVector135,
      title: "lbl_live".tr,
      type: BottomBarEnum.Live,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavLive,
      activeIcon: ImageConstant.imgNavLive,
      title: "lbl_live".tr,
      type: BottomBarEnum.Live,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLockIndigo200,
      activeIcon: ImageConstant.imgLockIndigo200,
      title: "lbl_live".tr,
      type: BottomBarEnum.Live,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.v,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup297,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              color: appTheme.indigo200,
            ),
            activeIcon: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 13.h,
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelSmallWhiteA700.copyWith(
                      color: appTheme.whiteA700,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 21.v,
                  width: 27.h,
                  color: appTheme.indigo200,
                  margin: EdgeInsets.only(left: 59.h),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Live,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
