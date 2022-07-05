// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmasafood/Components/customelevetedbutton.dart';
import 'package:masmasafood/Data/colors.dart';

import '../Data/images_path.dart';
import '../Data/typography.dart';
import '../Model/placeOrder.dart';

class BottomSheetWidget extends StatelessWidget {
  VoidCallback onPressed;
  BottomSheetWidget({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.only(left: 10.w, right: 12.w, top: 12.h),
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: CustomColors.kButton2Color,
          borderRadius: BorderRadius.circular(22.r),
          image: DecorationImage(
            image: AssetImage(CustomAssets.kBottomSheet),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Sub-Total   ',
                style: CustomTextStyle.kPlaceOrderSheetTextStyle,
              ),
              Text(
                '120 \$',
                style: CustomTextStyle.kPlaceOrderSheetTextStyle,
              )
            ]),
            SizedBox(
              height: 3.h,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Delivery Charge   ',
                style: CustomTextStyle.kPlaceOrderSheetTextStyle,
              ),
              Text(
                '10 \$',
                style: CustomTextStyle.kPlaceOrderSheetTextStyle,
              )
            ]),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discount    ',
                  style: CustomTextStyle.kPlaceOrderSheetTextStyle,
                ),
                Text(
                  '20 \$',
                  style: CustomTextStyle.kPlaceOrderSheetTextStyle,
                )
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total    ',
                  style: CustomTextStyle.kPlaceOrderSheetTotalTextStyle,
                ),
                Text(
                  '150\$',
                  style: CustomTextStyle.kPlaceOrderSheetTotalTextStyle,
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomElevetedButton(
                title: 'Place My Order',
                height: 50,
                width: 325,
                isTextColorWhite: true,
                backgroundcolorOne: CustomColors.kBackgroundColor,
                backgroundcolorTwo: CustomColors.kBackgroundColor,
                onPressed: onPressed),
          ],
        ),
      ),
    );
  }
}
