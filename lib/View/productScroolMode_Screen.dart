import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masmasafood/Components/customTestimonialWidget.dart';
import 'package:masmasafood/Components/customWijieBarAndRestoWidget.dart';
import 'package:masmasafood/Data/colors.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/Model/testimonials.dart';
import 'package:masmasafood/Model/wijieBar.dart';

import '../Data/images_path.dart';

class ProductScroolModeScreen extends StatefulWidget {
  const ProductScroolModeScreen({Key? key}) : super(key: key);

  @override
  State<ProductScroolModeScreen> createState() =>
      _ProductScroolModeScreenState();
}

class _ProductScroolModeScreenState extends State<ProductScroolModeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        body: Container(
          color: Colors.transparent,
          child: Stack(
            children: [
              Image.asset(CustomAssets.kPhotoRestaurant),
              DraggableScrollableSheet(
                maxChildSize: 0.8,
                initialChildSize: 0.6,
                minChildSize: 0.6,
                builder: (context, scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45.r),
                          topRight: Radius.circular(45.r)),
                      color: CustomColors.kBackgroundColor,
                    ),
                    child: ListView(
                        physics: const BouncingScrollPhysics(),
                        controller: scrollController,
                        children: [
                          Column(
                            children: [
                              Center(
                                child: SizedBox(
                                  width: 58.w,
                                  child: Divider(
                                    height: 4,
                                    thickness: 8,
                                    color: CustomColors.kDivider,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                    top: 42.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 24.w),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.r),
                                              color: CustomColors
                                                  .kgreenAcentbgColor),
                                          width: 74.w,
                                          height: 34.h,
                                          child: Center(
                                              child: Text(
                                            'Popular',
                                            style: CustomTextStyle
                                                .kPopularChipTitleTextStyle,
                                          )),
                                        ),
                                      ),
                                      SizedBox(
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 29.w),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                    width: 34.w,
                                                    height: 34.h,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.r),
                                                        color: CustomColors
                                                            .kgreenAcentbgColor),
                                                    child: Icon(
                                                      FontAwesomeIcons
                                                          .locationPin,
                                                      color: CustomColors
                                                          .kButton2Color,
                                                      size: 18.sp,
                                                    )),
                                                SizedBox(
                                                  width: 15.w,
                                                ),
                                                Container(
                                                    width: 34.w,
                                                    height: 34.h,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.r),
                                                        color: CustomColors
                                                            .kredAcentbgColor),
                                                    child: Icon(
                                                      FontAwesomeIcons
                                                          .solidHeart,
                                                      color: CustomColors
                                                          .kHeartColor,
                                                      size: 18.sp,
                                                    )),
                                              ]),
                                        ),
                                      )
                                    ],
                                  )),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 20.h, left: 34.w, right: 46.w),
                                child: SizedBox(
                                    width: 296.w,
                                    child: Text(
                                      'Wijie Bar and Resto',
                                      style: CustomTextStyle
                                          .kdarggableTitleTextStyle,
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 34.w, top: 20.h),
                                child: Row(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.locationPin,
                                          size: 17.sp,
                                          color: CustomColors.kButton2Color,
                                        ),
                                        SizedBox(
                                          width: 6.w,
                                        ),
                                        Text(
                                          '19 Km',
                                          style: CustomTextStyle
                                              .kdarggableSubTitleTextStyle,
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                              Icons.star_half,
                                              color: CustomColors.kButton2Color,
                                              size: 17.sp,
                                            ),
                                            SizedBox(
                                              width: 6.w,
                                            ),
                                            Text(
                                              '4,8 Rating',
                                              style: CustomTextStyle
                                                  .kdarggableSubTitleTextStyle,
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 313.w,
                                child: Text(
                                  'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .',
                                  style:
                                      CustomTextStyle.kMenuDescriptionTextStyle,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 26.w, top: 20.h),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 143.w,
                                      child: Text(
                                        'Popular Menu',
                                        style: CustomTextStyle
                                            .kNearestRestaurantTextStyle,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 110.w,
                                    ),
                                    SizedBox(
                                      width: 80.w,
                                      child: Text(
                                        'View All',
                                        style:
                                            CustomTextStyle.kViewMoreTextStyle,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, top: 20.h),
                                child: Container(
                                  width: double.infinity,
                                  height: 190.h,
                                  color: CustomColors.kBackgroundColor,
                                  child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: barItemsList.length,
                                    itemBuilder: (context, index) {
                                      return CustomWijieBarAndRestoWidget(
                                        wijieBarAndResto: barItemsList[index],
                                      );
                                    },
                                    separatorBuilder: (BuildContext, int) {
                                      return SizedBox(
                                        height: 20.h,
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 20.h, left: 32.w, right: 251.w),
                                child: Text(
                                  'Testimonials',
                                  style:
                                      CustomTextStyle.kMenuTestionialTextStyle,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.w, top: 20.h),
                                child: Container(
                                  height: 336.h,
                                  color: CustomColors.kBackgroundColor,
                                  child: ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: listOfTestimonials.length,
                                    itemBuilder: (context, index) {
                                      return CustomTestimonialWidget(
                                        testimonials: listOfTestimonials[index],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ]),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
