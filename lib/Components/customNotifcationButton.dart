// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Data/colors.dart';

class CustomNotificationButton extends StatelessWidget {
  VoidCallback onPressed;
  IconData icon;
  CustomNotificationButton(
      {Key? key, required this.onPressed, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 1,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
        child: Container(
            width: 45.w,
            height: 45.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: CustomColors.kNotificationButtonBackgroundColor,
            ),
            child: Stack(children: [
              Align(
                alignment: Alignment.center,
                child: Icon(
                  icon,
                  color: CustomColors.kButtonColor,
                  size: 30.sp,
                ),
              ),
              Positioned(
                top: 10.h,
                left: 25.w,
                child: Container(
                  width: 8.w,
                  height: 8.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: CustomColors.kDotColor,
                  ),
                ),
              )
            ])),
      ),
    );
  }
}
