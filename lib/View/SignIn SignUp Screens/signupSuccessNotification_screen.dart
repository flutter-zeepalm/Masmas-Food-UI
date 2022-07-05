// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customelevetedbutton.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/verificationCode_screen.dart';

import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class SignUpSuccessNotifyScreen extends StatefulWidget {
  const SignUpSuccessNotifyScreen({Key? key}) : super(key: key);

  @override
  State<SignUpSuccessNotifyScreen> createState() =>
      _SignUpSuccessNotifyScreenState();
}

class _SignUpSuccessNotifyScreenState extends State<SignUpSuccessNotifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.kBackgroundColor,
        child: SafeArea(
          child: Scaffold(
            body: Stack(
              children: [
                Image.asset(CustomAssets.kBackgroundImagesvg),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 101.w, right: 101.w, top: 180.h),
                      child: SizedBox(
                        width: 172.w,
                        height: 162.h,
                        child: Image.asset(
                          CustomAssets.kCongratsIconSvg,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 33.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 115.w,
                        right: 114.w,
                      ),
                      child: Text(
                        'Congrats!',
                        textAlign: TextAlign.center,
                        style: CustomTextStyle.kTitleTextStyleForCongratsScreen,
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 32.w,
                        right: 32.w,
                      ),
                      // ignore: prefer_const_constructors
                      child: Text(
                        'Your Profile Is Ready To Use',
                        textAlign: TextAlign.center,
                        style:
                            CustomTextStyle.kSubTitleTextStyleForCongratsScreen,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 109.w, top: 192.h, right: 109.w),
                      child: CustomElevetedButton(
                          title: 'Next',
                          height: 57,
                          width: 157,
                          backgroundcolorOne: CustomColors.kButtonColor,
                          backgroundcolorTwo: CustomColors.kButton2Color,
                          onPressed: () {
                            Get.to(() => const VerificationCodeScreen());
                          }),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
