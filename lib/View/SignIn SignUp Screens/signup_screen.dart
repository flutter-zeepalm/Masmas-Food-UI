import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customTextButton.dart';
import 'package:masmasafood/Components/customelevetedbutton.dart';
import 'package:masmasafood/Data/colors.dart';
import 'package:masmasafood/Data/images_path.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/signup_process_screen.dart';

import '../../Components/customcheckBox.dart';
import '../../Components/customtextfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                Column(children: [
                  Stack(
                    children: [
                      Image.asset(CustomAssets.kBackgroundImagesvg),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 100.w, right: 100.w, top: 47.h),
                        child: SizedBox(
                          height: 139.h,
                          width: 175.h,
                          child: Image.asset(
                            CustomAssets.kLogoForSplashSvg,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 166.h,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 65.w, right: 65.w, bottom: 10.h),
                          child: SizedBox(
                            height: 54.h,
                            width: 245.h,
                            child: Text(
                              'MasmasFood',
                              style: CustomTextStyle.kTextStyleForSplashScreen,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 210.h,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 107.w,
                            right: 106.w,
                          ),
                          // ignore: prefer_const_constructors
                          child: SizedBox(
                              height: 16.h,
                              width: 162.h,
                              child: const Text('Deliever Favorite Food')),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 79.w,
                      right: 79.w,
                    ),
                    child: SizedBox(
                      width: 161.w,
                      height: 26.h,
                      child: Text(
                        'Sign Up For Free ',
                        style: CustomTextStyle.kColumTextStyleForsigninScreen,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  CustomTextField(
                    hintText: 'Anamwp . . |',
                    width: 325,
                    height: 57,
                    color: CustomColors.kBackgroundColor,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  CustomTextField(
                    hintText: ' Email',
                    width: 325,
                    height: 57,
                    color: CustomColors.kBackgroundColor,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  CustomTextField(
                    hintText: ' Password',
                    width: 325,
                    height: 57,
                    color: CustomColors.kBackgroundColor,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 23.w,
                    ),
                    child: Column(children: [
                      CheckBoxWidget(value: true, title: 'Keep Me Signed In'),
                      SizedBox(
                        height: 8.h,
                      ),
                      CheckBoxWidget(
                          value: true, title: 'Email Me About Special Pricing'),
                    ]),
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  CustomElevetedButton(
                      title: 'Create Account',
                      height: 56,
                      width: 141,
                      backgroundcolorOne: CustomColors.kButtonColor,
                      backgroundcolorTwo: CustomColors.kButton2Color,
                      onPressed: () {
                        Get.to(() => const SignUpProcessScreen(),
                            transition: Transition.leftToRight);
                      }),
                  SizedBox(
                    height: 6.h,
                  ),
                  CustomTextButton(
                    title: 'already have an account?',
                    onPressed: () {},
                    isfontSizeSmall: true,
                  )
                ]),
              ]),
        ),
      ),
    );
  }
}
