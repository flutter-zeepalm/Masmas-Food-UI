import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/route/persistentTabView.dart';

import '../../Components/customelevetedbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class SuccessNotificationScreen extends StatefulWidget {
  const SuccessNotificationScreen({Key? key}) : super(key: key);

  @override
  State<SuccessNotificationScreen> createState() =>
      _SuccessNotificationScreenState();
}

class _SuccessNotificationScreenState extends State<SuccessNotificationScreen> {
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
                Image.asset(CustomAssets.kBackgroundImagesvg),
                Padding(
                  padding:
                      EdgeInsets.only(left: 101.w, right: 101.w, top: 180.h),
                  child: SizedBox(
                    width: 172.w,
                    height: 162.h,
                    child: Image.asset(
                      CustomAssets.kCongratsIconSvg,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 33.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 115.w,
                right: 114.w,
              ),
              child: SizedBox(
                width: 146.w,
                height: 39.h,
                child: Text(
                  'Congrats!',
                  style: CustomTextStyle.kTitleTextStyleForCongratsScreen,
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 31.w,
                right: 32.w,
              ),
              // ignore: prefer_const_constructors
              child: SizedBox(
                width: 312.w,
                height: 30.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 25.w),
                  child: Text(
                    'Password reset succesful',
                    style: CustomTextStyle.kSubTitleTextStyleForCongratsScreen,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 109.w, top: 194.h, right: 109.w),
              child: CustomElevetedButton(
                  title: 'Back',
                  height: 57,
                  width: 157,
                  backgroundcolorOne: CustomColors.kButtonColor,
                  backgroundcolorTwo: CustomColors.kButton2Color,
                  onPressed: () {
                    Get.to(() => const PersistentTabViewScreen(),
                        transition: Transition.fadeIn);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
