import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Data/colors.dart';
import '../Data/typography.dart';
import '../Model/testimonials.dart';

class CustomTestimonialWidget extends StatelessWidget {
  Testimonials testimonials;

  CustomTestimonialWidget({
    Key? key,
    required this.testimonials,
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
            width: 336.w,
            height: 128.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.r),
              color: CustomColors.kBackgroundColor,
            ),
            child: Column(
              children: [
                ListTile(
                  leading: SizedBox(
                      width: 63.w,
                      height: 62.h,
                      child: Image.asset(testimonials.image)),
                  title: Padding(
                    padding: EdgeInsets.only(top: 18.h),
                    child: SizedBox(
                      width: 105.w,
                      height: 20.h,
                      child: Text(
                        testimonials.name,
                        style: CustomTextStyle.kSlidableTitleTextStyle,
                      ),
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        testimonials.dateTime,
                        style: CustomTextStyle.kMenuCardSubTitleTextStyle,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                    ],
                  ),
                  trailing: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: CustomColors.kgreenAcentbgColor),
                    width: 53.w,
                    height: 33.h,
                    child: Row(
                      children: [
                        SizedBox(
                          child: Icon(
                            Icons.star_half,
                            size: 17,
                            color: CustomColors.kButton2Color,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 4.h),
                          child: SizedBox(
                            child: Text(
                              testimonials.star.toString(),
                              style: CustomTextStyle
                                  .kMenuTestionialTralingTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 96.w, right: 28.w, top: 10.h),
                  child: SizedBox(
                    width: 213.w,
                    height: 44.h,
                    child: Text(
                      testimonials.feedBack,
                      style: CustomTextStyle.kMenuDescriptionTextStyle,
                    ),
                  ),
                )
              ],
            ),
          ),
          // ignore: dead_code
        ));
  }
}
