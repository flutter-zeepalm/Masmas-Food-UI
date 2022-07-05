import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Data/images_path.dart';
import 'package:masmasafood/View/Chat%20Screens/finishorder_screen.dart';
import 'package:masmasafood/View/Chat%20Screens/message_screen.dart';

import '../../Data/colors.dart';
import '../../Data/typography.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

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
                "15.23 Min",
                style: CustomTextStyle.kCallRiningSubTextStyle,
              ),
              SizedBox(
                height: 177.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        width: 78.w,
                        height: 78.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(55.r),
                          color: CustomColors.kPhoneIconBackgroundColor,
                        ),
                        child: Icon(
                          Icons.volume_off,
                          color: CustomColors.kVolumIconColor,
                        )),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.offAll(() => FinishOrderScreen(),
                          transition: Transition.fadeIn);
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
