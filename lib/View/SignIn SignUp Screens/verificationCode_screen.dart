// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/viaMethod_screen.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Components/customelevetedbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../Data/typography.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

TextEditingController pinController = TextEditingController();

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        backgroundColor: Colors.blueAccent.withOpacity(0.0025),
        body: Stack(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Image.asset(CustomAssets.kTopRightBackgroundImage)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25.w, bottom: 20.h, top: 40.h),
                  child: ArrowBackButton(
                    height: 45,
                    width: 45,
                    icon: Icons.arrow_back_ios_new,
                    onPressed: () => Get.back(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.w),
                  child: Text(
                    'Enter 4-digit Verification code',
                    style: CustomTextStyle.kStackTitleforSignupProcess.copyWith(
                        fontSize: 40.sp,
                        fontWeight: FontWeight.bold,
                        height: 1.25),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 110.w, top: 20.h),
                  child: Text(
                    'Code send to +6282045**** . This code will expired in 01:30',
                    style: CustomTextStyle.kStackSubTitleforSignupProcess
                        .copyWith(fontSize: 15.sp),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 20.h),
                  child: Container(
                    width: Get.width,
                    height: 103.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: PinCodeTextField(
                        hintCharacter: '*',
                        controller: pinController,
                        backgroundColor: Colors.transparent,
                        pinTheme: PinTheme(
                          inactiveColor: Colors.transparent,
                          fieldHeight: 50,
                          disabledColor: Colors.white,
                          errorBorderColor: Colors.white,
                          selectedColor: Colors.white,
                          activeColor: Colors.white,
                          inactiveFillColor: Colors.white,
                          selectedFillColor: Colors.white,
                          fieldWidth: 40,
                          activeFillColor: Colors.white,
                        ),
                        length: 4,
                        textStyle: CustomTextStyle
                            .kStackSubTitleforSignupProcess
                            .copyWith(
                                fontSize: 30.sp, fontWeight: FontWeight.bold),
                        onChanged: (String value) {},
                        appContext: context,
                        animationType: AnimationType.fade,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding:
                      EdgeInsets.only(left: 109.w, bottom: 60.h, right: 109.w),
                  child: CustomElevetedButton(
                      title: 'Next',
                      height: 57,
                      width: 157,
                      backgroundcolorOne: CustomColors.kButtonColor,
                      backgroundcolorTwo: CustomColors.kButton2Color,
                      onPressed: () {
                        Get.to(() => const ViaMethodScreen(),
                            transition: Transition.fadeIn);
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
