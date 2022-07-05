import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:masmasafood/View/Chat%20Screens/Call_Screen.dart';
import 'package:masmasafood/View/Chat%20Screens/chatdetails_screen.dart';

import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class CallRingingScreen extends StatefulWidget {
  CallRingingScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CallRingingScreen> createState() => _CallRingingScreenState();
}

class _CallRingingScreenState extends State<CallRingingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: SafeArea(
        child: Scaffold(
          body: Column(
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
                      width: 161.w,
                      height: 162.h,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Image.asset(CustomAssets.krichardLewis),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 61.h,
              ),
              Text(
                'Richard Lewis',
                style: CustomTextStyle.kCallingScreenTextStyle,
              ),
              SizedBox(
                height: 9.h,
              ),
              Text(
                'Ringing . . .',
                style: CustomTextStyle.kCallRiningSubTextStyle,
              ),
              SizedBox(
                height: 177.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const CallScreen(),
                          transition: Transition.fadeIn);
                    },
                    child: Container(
                        width: 78.w,
                        height: 78.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(55.r),
                          color: CustomColors.kPhoneIconBackgroundColor,
                        ),
                        child: Icon(
                          FontAwesomeIcons.volumeHigh,
                          color: CustomColors.kVolumIconColor,
                        )),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                        width: 78.w,
                        height: 78.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(55.r),
                          color: CustomColors.kcancelButtonColor,
                        ),
                        child: Icon(
                          FontAwesomeIcons.xmark,
                          color: CustomColors.kBackgroundColor,
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
