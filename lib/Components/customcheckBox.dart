// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Data/colors.dart';
import '../Data/typography.dart';

class CheckBoxWidget extends StatefulWidget {
  String title;
  bool value;
  CheckBoxWidget({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        width: 22.w,
        height: 22.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: CustomColors.kButton2Color,
        ),
        child: Checkbox(
            activeColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
            value: widget.value,
            onChanged: (value) {
              setState(() {
                widget.value = value as bool;
              });
            }),
      ),
      SizedBox(
        width: 8.w,
      ),
      Text(
        widget.title,
        style: CustomTextStyle.kChecckBoxTextStyle,
      )
    ]);
  }
}
