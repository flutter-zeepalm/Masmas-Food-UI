// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Data/colors.dart';
import '../Data/typography.dart';
import '../Model/favoriteFood.dart';
import 'customelevetedbutton.dart';

class CustomFavoriteFoodWidget extends StatelessWidget {
  FavoriteFood favoriteFood;

  CustomFavoriteFoodWidget({
    Key? key,
    required this.favoriteFood,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Card(
        elevation: 1,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.r)),
        child: Container(
          width: 350.w,
          height: 103.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.r),
            color: CustomColors.kBackgroundColor,
          ),
          child: ListTile(
            leading: SizedBox(
                width: 63.w,
                height: 62.h,
                child: Image.asset(favoriteFood.image)),
            title: Padding(
              padding: EdgeInsets.only(top: 18.h),
              child: Text(
                favoriteFood.title,
                style: CustomTextStyle.kSlidableTitleTextStyle,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  favoriteFood.subTitle,
                  style: CustomTextStyle.kSlidableSubTitleTextStyle,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  favoriteFood.price,
                  style: CustomTextStyle.kSlidablePriceTitleTextStyle,
                )
              ],
            ),
            trailing: CustomElevetedButton(
              title: 'Buy Again',
              height: 40,
              width: 100,
              onPressed: () {},
              backgroundcolorOne: CustomColors.kButtonColor,
              backgroundcolorTwo: CustomColors.kButton2Color,
            ),
          ),
        ),
      ),
      // ignore: dead_code
    );
  }
}
