// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customelevetedbutton.dart';
import 'package:masmasafood/View/Cart%20Shopping/payments_screen.dart';
import 'package:masmasafood/View/DashBoard/notificationScreen.dart';

import '../../Components/customFilterButton.dart';
import '../../Components/customNotifcationButton.dart';
import '../../Components/customSildable.dart';
import '../../Components/customtextfield.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';
import '../../Model/order_details.dart';

class YourOrdersScreen extends StatefulWidget {
  const YourOrdersScreen({Key? key}) : super(key: key);

  @override
  State<YourOrdersScreen> createState() => _YourOrdersScreenState();
}

class _YourOrdersScreenState extends State<YourOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: SafeArea(
        child: Scaffold(
          body: ListView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            children: [
              Stack(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child:
                          Image.asset(CustomAssets.kTopRightBackgroundImage)),
                  Positioned(
                    top: 100.h,
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
                      top: 100.h,
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
                height: 2.h,
              ),
              Container(
                width: double.infinity,
                height: 450.h,
                color: CustomColors.kBackgroundColor,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ReusableCard(
                      orderDetails: myOrderList[index],
                      index: index,
                    );
                  },
                  separatorBuilder: (BuildContext, int) {
                    return SizedBox(
                      height: 5.h,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 24.w,
                  right: 24.w,
                ),
                child: CustomElevetedButton(
                  title: 'Check out',
                  height: 57,
                  width: 325,
                  onPressed: () {
                    Get.to(() => const PaymentsScreen(),
                        transition: Transition.fadeIn);
                  },
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

class ReusableCard extends StatefulWidget {
  OrderDetails orderDetails;
  int index;
  ReusableCard({Key? key, required this.orderDetails, required this.index})
      : super(key: key);

  @override
  State<ReusableCard> createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: ColorFiltered(
        colorFilter: (widget.index < 2)
            ? const ColorFilter.mode(
                Colors.white,
                BlendMode.colorBurn,
              )
            : const ColorFilter.mode(
                Colors.white,
                BlendMode.saturation,
              ),
        child: Card(
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.r)),
          child: Container(
            width: 347.w,
            height: 103.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.r),
              color: CustomColors.kBackgroundColor,
            ),
            child: ListTile(
              leading: SizedBox(
                  width: 60.w,
                  height: 60.h,
                  child: Image.asset(widget.orderDetails.image)),
              title: Padding(
                padding: EdgeInsets.only(top: 18.h),
                child: Text(
                  widget.orderDetails.title,
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
                    widget.orderDetails.subTitle,
                    style: CustomTextStyle.kSlidableSubTitleTextStyle,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    widget.orderDetails.price,
                    style: CustomTextStyle.kSlidablePriceTitleTextStyle,
                  )
                ],
              ),
              trailing: Padding(
                padding: EdgeInsets.only(top: 12.h),
                child: CustomElevetedButton(
                  title: 'Proccess',
                  height: 30,
                  width: 99,
                  onPressed: () {},
                  backgroundcolorOne: CustomColors.kButtonColor,
                  backgroundcolorTwo: CustomColors.kButton2Color,
                ),
              ),
            ),
          ),
        ),
      ),
      // ignore: dead_code
    );
  }
}
