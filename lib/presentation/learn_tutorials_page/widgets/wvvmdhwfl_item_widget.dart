import '../models/wvvmdhwfl_item_model.dart';
import 'package:flutter/material.dart';
import 'package:saeed_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class WvvmdhwflItemWidget extends StatelessWidget {
  WvvmdhwflItemWidget(
    this.wvvmdhwflItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WvvmdhwflItemModel wvvmdhwflItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260.h,
      child: CustomImageView(
        imagePath: wvvmdhwflItemModelObj?.wVVMDhWfL,
        height: 350.v,
        width: 260.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
