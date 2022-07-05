// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:masmasafood/Data/typography.dart';

import '../Data/colors.dart';

class ScoialButton extends StatelessWidget {
  String title;
  double width;
  double height;
  VoidCallback onPressed;
  String image;

  ScoialButton(
      {Key? key,
      required this.title,
      required this.height,
      required this.width,
      required this.onPressed,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: CustomColors.kBackgroundColor,
        shadowColor: CustomColors.kShadowColor, // Background color
      ),
      child: Row(children: [
        SvgPicture.asset(image),
        SizedBox(
          width: 13.w,
        ),
        Text(title, style: CustomTextStyle.kSocialCustomButton)
      ]),
    );
  }
}
