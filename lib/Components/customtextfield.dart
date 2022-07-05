// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmasafood/Data/typography.dart';

import '../Data/colors.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
  IconData? icon;
  double width, height;
  Color color;
  bool? isSearcBar;

  CustomTextField(
      {Key? key,
      required this.hintText,
      this.icon,
      required this.width,
      required this.height,
      required this.color,
      this.isSearcBar})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.w, right: 14.w),
      child: isSearcBar == false
          ? Container(
              width: width.w,
              height: height.h,
              padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 8.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: color,
                  border: Border.all(color: CustomColors.kBorderColor)),
              child: Row(
                children: [
                  SizedBox(
                    width: 24.w,
                    height: 24.h,
                    child: Padding(
                      padding: EdgeInsets.only(left: 18.w),
                      child: Icon(
                        icon,
                        color: CustomColors.kSearchBarColor,
                        size: 27.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 35.w,
                  ),
                  SizedBox(
                    width: 170.w,
                    child: Padding(
                      padding: EdgeInsets.only(top: 1.h),
                      child: TextField(
                        cursorColor: CustomColors.kSearchBarColor,
                        style: TextStyle(
                          color: CustomColors.kSearchBarColor,
                        ),
                        decoration: InputDecoration(
                          hintText: hintText,
                          hintStyle: CustomTextStyle.kSearchBarHintTextStyle,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: CustomTextStyle.kHintTextStyle,
                  constraints: BoxConstraints(maxHeight: 50.h),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                      borderSide: BorderSide(color: CustomColors.kShadowColor)),
                ),
              ),
            ),
    );
  }
}
