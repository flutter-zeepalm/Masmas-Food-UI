import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masmasafood/Components/customTestimonialWidget.dart';
import 'package:masmasafood/Components/customelevetedbutton.dart';

import '../Data/colors.dart';
import '../Data/images_path.dart';
import '../Data/typography.dart';
import '../Model/testimonials.dart';

class DetailMenuScreen extends StatefulWidget {
  const DetailMenuScreen({Key? key}) : super(key: key);

  @override
  State<DetailMenuScreen> createState() => _DetailMenuScreenState();
}

class _DetailMenuScreenState extends State<DetailMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        body: Container(
          color: Colors.transparent,
          child: Stack(
            children: [
              Image.asset(CustomAssets.kPhotoMenu),
              DraggableScrollableSheet(
                maxChildSize: 0.8,
                initialChildSize: 0.5,
                minChildSize: 0.5,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                    height: 70.h,
                                    child: Text(
                                      'Rainbow Sandwich Sugarless',
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
                                          Icons.star_half,
                                          color: CustomColors.kButton2Color,
                                        ),
                                        SizedBox(
                                          width: 6.w,
                                        ),
                                        Text(
                                          '4,8 Rating',
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
                                              FontAwesomeIcons.shoppingBag,
                                              color: CustomColors.kButton2Color,
                                              size: 17.sp,
                                            ),
                                            SizedBox(
                                              width: 6.w,
                                            ),
                                            Text(
                                              '2000+ Order',
                                              style: CustomTextStyle
                                                  .kdarggableSubTitleTextStyle,
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 37.w, top: 24.h, right: 15.w),
                                child: SizedBox(
                                  width: 324.w,
                                  child: Text(
                                    """
Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.
     
      . Strowberry
      . Cream
      . wheat

Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt.""",
                                    style: CustomTextStyle
                                        .kMenuDescriptionTextStyle,
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
                          ),
                        ]),
                  );
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomElevetedButton(
                  title: 'Add To Chart',
                  height: 57,
                  width: 326,
                  onPressed: () {},
                  backgroundcolorOne: CustomColors.kButtonColor,
                  backgroundcolorTwo: CustomColors.kButton2Color,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
