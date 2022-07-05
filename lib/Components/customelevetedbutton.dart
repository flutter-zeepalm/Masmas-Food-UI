// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:masmasafood/Data/colors.dart';
import 'package:masmasafood/Data/typography.dart';

// class CustomElevetedButton extends StatefulWidget {

//   CustomElevetedButton(
//       {Key? key,
//       required this.title,
//       required this.height,
//       required this.width,
//       required this.onPressed,
//       required this.backgroundcolorOne,
//       this.isTextColorWhite,
//       required this.backgroundcolorTwo})
//       : super(key: key);

//   @override
//   State<CustomElevetedButton> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<CustomElevetedButton> {
//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }

class CustomElevetedButton extends StatelessWidget {
  String title;
  double width;
  double height;
  Color backgroundcolorOne;
  Color backgroundcolorTwo;
  bool? isTextColorWhite;
  VoidCallback onPressed;
  CustomElevetedButton({
    Key? key,
    required this.title,
    required this.width,
    required this.height,
    required this.backgroundcolorOne,
    required this.backgroundcolorTwo,
    this.isTextColorWhite,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(width, height),
            primary: Colors.transparent,
            shadowColor: Colors.transparent
            // Background color
            ),
        onPressed: onPressed,
        child: Text(
          title,
          style: isTextColorWhite == true
              ? CustomTextStyle.kCustomButtonWhiteTitle
              : CustomTextStyle.kCustomButton,
        ));
  }
}
