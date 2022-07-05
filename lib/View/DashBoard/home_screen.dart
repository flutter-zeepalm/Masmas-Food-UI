// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customFilterButton.dart';
import 'package:masmasafood/Components/customNotifcationButton.dart';
import 'package:masmasafood/Components/customPopularMenuWidget.dart';
import 'package:masmasafood/Components/customPopularRestrurant.dart';
import 'package:masmasafood/Components/customtextfield.dart';
import 'package:masmasafood/Model/popularMenu.dart';
import 'package:masmasafood/View/DashBoard/notificationScreen.dart';
import 'package:masmasafood/View/DashBoard/voucherpromo_screen.dart';

import '../../Data/colors.dart';

import '../../Data/images_path.dart';
import '../../Data/typography.dart';
import '../../Model/popularRestaurant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          children: [
            Stack(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(CustomAssets.kTopRightBackgroundImage)),
                Positioned(
                  top: 135.h,
                  left: 31.w,
                  right: 111.w,
                  child: SizedBox(
                    width: 233.w,
                    height: 82.h,
                    child: Text(
                      'Find Your Favorite Food',
                      style: CustomTextStyle.kStackTitleforHomePage,
                    ),
                  ),
                ),
                Positioned(
                    top: 135.h,
                    right: 39.w,
                    child: CustomNotificationButton(
                      icon: Icons.notifications_outlined,
                      onPressed: () {
                        Get.to(() => const NotificationScreen(),
                            transition: Transition.fadeIn);
                      },
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.w,
              ),
              child: Row(
                children: [
                  CustomTextField(
                    hintText: 'What do you want to order?',
                    width: 267,
                    height: 50,
                    color: CustomColors.kCustomHomeSearchBarColor,
                    icon: Icons.search,
                    isSearcBar: false,
                  ),
                  SizedBox(
                    width: 9.w,
                  ),
                  CustomFilterButton(
                    onPressed: () {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25.w,
                right: 25.w,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const VoucherPromoScreen(),
                      transition: Transition.fadeIn);
                },
                child: Container(
                  width: 325.w,
                  height: 140.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    image: DecorationImage(
                        image: AssetImage(CustomAssets.kPromoAdvt),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 10.h),
                  child: SizedBox(
                    width: 143.w,
                    child: Text(
                      'Nearest Restaurant',
                      style: CustomTextStyle.kNearestRestaurantTextStyle,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 32.w, top: 10.h),
                  child: SizedBox(
                    width: 80.w,
                    child: Text(
                      'View More',
                      style: CustomTextStyle.kViewMoreTextStyle,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 480.w,
                height: 170.h,
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return customPopularRestrurantWidget(
                          popularRestaurant: restaurantList[index]);
                    },
                    // ignore: avoid_types_as_parameter_names
                    separatorBuilder: (context, int) {
                      return SizedBox(
                        width: 15.w,
                      );
                    },
                    itemCount: restaurantList.length),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 26.w, right: 34.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 143.w,
                    child: Text(
                      'Popular Menu',
                      style: CustomTextStyle.kNearestRestaurantTextStyle,
                    ),
                  ),
                  SizedBox(
                    width: 80.w,
                    child: Text(
                      'View More',
                      style: CustomTextStyle.kViewMoreTextStyle,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              width: 323.w,
              height: 100.h,
              child: ListView.builder(
                itemCount: popularMenuList.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return CustomPopularMenuWidget(
                      popular: popularMenuList[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
