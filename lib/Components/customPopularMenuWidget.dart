import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masmasafood/Data/typography.dart';

import '../Data/colors.dart';
import '../Model/popularMenu.dart';

class CustomPopularMenuWidget extends StatelessWidget {
  PopularMenu popular;
  CustomPopularMenuWidget({Key? key, required this.popular}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Card(
        elevation: 2,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.r)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 323.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.r),
              color: CustomColors.kBackgroundColor,
            ),
            child: ListTile(
              leading: SizedBox(
                  width: 64.w, height: 64.h, child: Image.asset(popular.image)),
              title: Text(
                popular.title,
                style: CustomTextStyle.kHomeBottomCardTextStyle,
              ),
              subtitle: Text(popular.subTitle,
                  style: CustomTextStyle.kMHomeBottomCardSubTextStyle),
              trailing: Text(
                '\$${popular.price.toString()}',
                style: CustomTextStyle.kHomeBottomCardPriceTitleTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
