// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmasafood/Data/typography.dart';

import '../Data/colors.dart';

class ArrowBackButton extends StatelessWidget {
  String? title;
  VoidCallback onPressed;
  IconData? icon;
  double width, height;
  bool? isTitleAviliable;
  ArrowBackButton(
      {Key? key,
      required this.onPressed,
      this.icon,
      required this.width,
      required this.height,
      this.isTitleAviliable,
      this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          width: width.w,
          height: height.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: CustomColors.arrowbackiosButtonColor,
          ),
          child: isTitleAviliable == true
              ? Center(
                  child: Text(
                    title!,
                    style: CustomTextStyle.kchipButtonTextStyle,
                  ),
                )
              : Icon(
                  icon,
                  color: CustomColors.arrowbackiosIconColor,
                  size: 16.sp,
                )),
    );
  }
}
