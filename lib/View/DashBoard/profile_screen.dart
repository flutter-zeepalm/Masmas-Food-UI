// ignore_for_file: must_be_immutable, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customFavoriteFood_Widget.dart';
import 'package:masmasafood/Components/custom_arrowbutton.dart';
import 'package:masmasafood/Data/colors.dart';
import 'package:masmasafood/Data/typography.dart';

import '../../Data/images_path.dart';
import '../../Model/favoriteFood.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.kBackgroundColor,
        child: Scaffold(
          bottomSheet: DraggableScrollableSheet(
            maxChildSize: 0.8,
            initialChildSize: 0.6,
            expand: true,
            minChildSize: 0.6,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.r),
                      topRight: Radius.circular(45.r)),
                  color: CustomColors.kBackgroundBlackColor,
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
                                top: 42.h, left: 23.w, right: 244.w),
                            child: ArrowBackButton(
                              onPressed: () {},
                              height: 34,
                              width: 111,
                              isTitleAviliable: true,
                              title: 'Member Gold',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 20.h, left: 23.w, right: 25.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Anam Wusono',
                                  style:
                                      CustomTextStyle.kdarggableTitleTextStyle,
                                ),
                                Icon(
                                  Icons.mode_edit,
                                  color: CustomColors.kPhoneIconColor,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 4.h, left: 21.w, right: 194.w),
                            child: Text(
                              'anamwp66@gmail.com',
                              style:
                                  CustomTextStyle.kdarggableSubTitleTextStyle,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 18.w, right: 15.w, top: 20.h),
                            child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.r)),
                              child: Container(
                                padding: EdgeInsets.only(left: 20.w),
                                decoration: BoxDecoration(
                                  color: CustomColors.kBackgroundColor,
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                                width: 347.w,
                                height: 64.h,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 43.w,
                                        height: 43.h,
                                        child: Image.asset(
                                            CustomAssets.kVoucherIcon),
                                      ),
                                      SizedBox(
                                        width: 30.w,
                                      ),
                                      SizedBox(
                                        width: 141.w,
                                        height: 29.h,
                                        child: Text(
                                          'You Have 3 Voucher',
                                          style: CustomTextStyle
                                              .kVoucherCardTextStyle,
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: 283.w, top: 20.h, left: 20.w),
                            child: Text(
                              'Favorite',
                              style: CustomTextStyle.kFavoriteTEXTStyle,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            width: double.infinity,
                            height: 450.h,
                            color: CustomColors.kBackgroundColor,
                            child: ListView.separated(
                              scrollDirection: Axis.vertical,
                              physics: const BouncingScrollPhysics(),
                              itemCount: foodList.length,
                              itemBuilder: (context, index) {
                                return CustomFavoriteFoodWidget(
                                  favoriteFood: foodList[index],
                                );
                              },
                              separatorBuilder: (BuildContext, int) {
                                return SizedBox(
                                  height: 20.h,
                                );
                              },
                            ),
                          ),
                        ],
                      )
                    ]),
              );
            },
          ),
          body: SizedBox(
            width: Get.width,
            height: 300.h,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 7),
              child: Image.asset(
                CustomAssets.kProfilePic,
                fit: BoxFit.cover,
              ),
            ),
            // child: Image.asset(
            //   CustomAssets.kProfilePic,
            //   fit: BoxFit.cover,
            // )),
          ),
        ));
  }
}
