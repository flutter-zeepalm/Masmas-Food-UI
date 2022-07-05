// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Data/colors.dart';
import '../Data/typography.dart';
import '../Model/wijieBar.dart';

class CustomWijieBarAndRestoWidget extends StatelessWidget {
  WijieBarAndResto wijieBarAndResto;

  CustomWijieBarAndRestoWidget({
    Key? key,
    required this.wijieBarAndResto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Card(
        elevation: 2,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.r)),
        child: Container(
          width: 171.w,
          height: 147.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.r),
            color: CustomColors.kBackgroundColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                    width: 63.w,
                    height: 62.h,
                    child: Image.asset(wijieBarAndResto.image)),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  wijieBarAndResto.name,
                  style: CustomTextStyle.kSlidableTitleTextStyle,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  wijieBarAndResto.price,
                  style: CustomTextStyle.kSlidableSubTitleTextStyle,
                ),
              ],
            ),
          ),
        ),
      ),
      // ignore: dead_code
    );
  }
}
