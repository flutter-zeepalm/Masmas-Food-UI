// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Data/colors.dart';

class CustomImageButton extends StatelessWidget {
  String image;

  double width;
  double height;
  VoidCallback onPressed;
  CustomImageButton(
      {Key? key,
      required this.image,
      required this.width,
      required this.height,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: GestureDetector(
        onTap: onPressed,
        child: Card(
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
          child: Container(
            width: 335.w,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: CustomColors.kBackgroundColor,
            ),
            child: SizedBox(
              width: width.w,
              height: height.h,
              child: Center(child: SvgPicture.asset(image)),
            ),
          ),
        ),
      ),
    );
  }
}
