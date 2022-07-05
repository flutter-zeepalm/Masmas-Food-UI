import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/View/Chat%20Screens/raterestaurant_screen.dart';

import '../../Components/customelevetedbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';

class RateFoodScreen extends StatefulWidget {
  RateFoodScreen({Key? key}) : super(key: key);

  @override
  State<RateFoodScreen> createState() => _RateFoodScreenState();
}

class _RateFoodScreenState extends State<RateFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              Stack(
                fit: StackFit.passthrough,
                children: [
                  Image.asset(CustomAssets.kDetailImage),
                  Positioned(
                    top: 167.h,
                    left: 108.w,
                    right: 108.w,
                    child: Container(
                      width: 172.w,
                      height: 162.h,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Image.asset(CustomAssets.kRateFood),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 35.h, //61
              ),
              Padding(
                padding: EdgeInsets.only(left: 82.w, right: 82.w),
                child: SizedBox(
                  width: 212.w,
                  height: 66.h,
                  child: Text(
                    '  Thank  You!     Order Completed',
                    textAlign: TextAlign.center,
                    style: CustomTextStyle.kFinishOrderScreenTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Please rate your Food",
                textAlign: TextAlign.center,
                style: CustomTextStyle.kCallRiningSubTextStyle,
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.h, left: 60.w, right: 60.w),
                child: SizedBox(
                  width: 253.67.w,
                  height: 33.67.h,
                  child: RatingBar.builder(
                    glowColor: Colors.amberAccent.withOpacity(0.1),
                    unratedColor: CustomColors.kUnrateStarIconColor,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: CustomColors.kStarIconColor,
                      size: 15.sp,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 72.h, left: 14.w, right: 23.w),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(19.r)),
                  width: 355.w,
                  height: 55.h,
                  child: const TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(FontAwesomeIcons.penToSquare),
                          border: InputBorder.none)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                child: Row(
                  children: [
                    CustomElevetedButton(
                        title: 'Submit',
                        height: 57,
                        width: 233,
                        backgroundcolorOne: CustomColors.kButtonColor,
                        backgroundcolorTwo: CustomColors.kButton2Color,
                        onPressed: () {
                          Get.to(() => const RateRestaurantScreen(),
                              transition: Transition.fadeIn);
                        }),
                    SizedBox(
                      width: 20.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const RateRestaurantScreen(),
                            transition: Transition.fadeIn);
                      },
                      child: Container(
                          width: 82.w,
                          height: 57.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(55.r),
                            color: CustomColors.kBorderColor,
                          ),
                          child: Center(
                              child: Text(
                            'Skip',
                            style: CustomTextStyle.kSkipButtonTextStyle,
                          ))),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
