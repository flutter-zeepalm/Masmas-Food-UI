import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Data/colors.dart';
import '../Data/typography.dart';
import '../Model/popularRestaurant.dart';

class customPopularRestrurantWidget extends StatelessWidget {
  PopularRestaurant popularRestaurant;
  customPopularRestrurantWidget({Key? key, required this.popularRestaurant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.r)),
      child: Container(
        width: 184.w,
        height: 147.h,
        decoration: BoxDecoration(
          color: CustomColors.kBackgroundColor,
          borderRadius: BorderRadius.circular(22.r),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            SizedBox(
              width: 96.w,
              height: 73.h,
              child: Image.asset(popularRestaurant.image),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              popularRestaurant.title,
              style: CustomTextStyle.kHomeCardTitleTextStyle,
            ),
            SizedBox(
              height: 6.h,
            ),
            Text(
              popularRestaurant.subTitle,
              style: CustomTextStyle.kHomeSubTitleTextStyle,
            ),
          ]),
        ),
      ),
    );
  }
}
