import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customBottomSheet.dart';
import 'package:masmasafood/Components/customSildable.dart';
import 'package:masmasafood/Components/customelevetedbutton.dart';
import 'package:masmasafood/Data/colors.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/Model/order_details.dart';
import 'package:masmasafood/View/Cart%20Shopping/payments_screen.dart';
import 'package:masmasafood/View/Cart%20Shopping/yourorders_screen.dart';
import 'package:masmasafood/View/DashBoard/home_screen.dart';
import 'package:masmasafood/route/persistentTabView.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Data/images_path.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
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
                      top: 38.h,
                      left: 23.w,
                      right: 307.w,
                      child: ArrowBackButton(
                        height: 45,
                        width: 45,
                        icon: Icons.arrow_back_ios_new,
                        onPressed: () =>
                            Get.to(const PersistentTabViewScreen()),
                      )),
                  Positioned(
                    top: 102.h,
                    left: 25.w,
                    right: 162.w,
                    child: SizedBox(
                      width: 188.w,
                      height: 33.h,
                      child: Text(
                        'Order details',
                        style: CustomTextStyle.kStackTitleforSignupProcess,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 380.h,
                color: CustomColors.kBackgroundColor,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CustomSildableWidget(
                          orderDetails: myOrderList[index]);
                    },
                    separatorBuilder: (BuildContext, int) {
                      return SizedBox(
                        height: 20.h,
                      );
                    },
                    itemCount: myOrderList.length),
              ),
              BottomSheetWidget(onPressed: () {
                Get.to(() => const YourOrdersScreen(),
                    transition: Transition.fadeIn);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
