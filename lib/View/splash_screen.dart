import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Data/colors.dart';

import 'package:masmasafood/Data/images_path.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/View/OnBoarding%20Screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        body: Container(
          color: Colors.transparent,
          child: Stack(
            children: [
              Image.asset(CustomAssets.kBackgroundImagesvg),
              Padding(
                padding: EdgeInsets.only(left: 99.w, right: 101.w, top: 305.h),
                child: Image.asset(
                  CustomAssets.kLogoForSplashSvg,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 65.w, right: 65.w, top: 430.h),
                child: Text(
                  'MasmasFood',
                  style: CustomTextStyle.kTextStyleForSplashScreen,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 106.w, right: 107.w, top: 475.h),
                // ignore: prefer_const_constructors
                child: Text(
                  'Deliever Favorite Food',
                  style: CustomTextStyle.kSubTextStyleForSplashScreen,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    3.seconds.delay().then((value) => Get.to(() => const OnboardingScreen()));
  }
}
