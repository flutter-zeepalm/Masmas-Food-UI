// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/successnotification_screen.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Components/customelevetedbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
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
                Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(CustomAssets.kTopRightBackgroundImage)),
                Positioned(
                    top: 38.h,
                    left: 26.w,
                    child: ArrowBackButton(
                      height: 45,
                      width: 45,
                      icon: Icons.arrow_back_ios_new,
                      onPressed: () => Get.back(),
                    )),
                Positioned(
                  top: 120.h,
                  left: 23.w,
                  child: SizedBox(
                    width: 264.w,
                    height: 66.h,
                    child: Text(
                      'Reset your password here',
                      style: CustomTextStyle.kStackTitleforSignupProcess,
                    ),
                  ),
                ),
                Positioned(
                    top: 180.h,
                    left: 23.w,
                    child: SizedBox(
                      width: 239.w,
                      height: 44.h,
                      child: Text(
                        'Select which contact details should we use to reset your password',
                        style: CustomTextStyle.kStackSubTitleforSignupProcess,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            ReusableTextField(hintText: 'New Password', obscureText: true),
            SizedBox(
              height: 20.h,
            ),
            ReusableTextField(hintText: 'Confirm Password', obscureText: false),
            Padding(
              padding: EdgeInsets.only(left: 109.w, top: 290.h, right: 109.w),
              child: CustomElevetedButton(
                  backgroundcolorOne: CustomColors.kButtonColor,
                  backgroundcolorTwo: CustomColors.kButton2Color,
                  title: 'Next',
                  height: 57,
                  width: 157,
                  onPressed: () {
                    Get.to(() => const SuccessNotificationScreen(),
                        transition: Transition.fadeIn);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableTextField extends StatefulWidget {
  String hintText;
  bool obscureText;
  ReusableTextField(
      {Key? key, required this.hintText, required this.obscureText})
      : super(
          key: key,
        );

  @override
  State<ReusableTextField> createState() => _ReusableTextFieldState();
}

class _ReusableTextFieldState extends State<ReusableTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.w, right: 14.w),
      child: Card(
        elevation: 1,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
        child: Container(
            width: 347.w,
            height: 61.h,
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 8.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: CustomColors.kBackgroundColor,
                border: Border.all(color: CustomColors.kBorderColor)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: widget.obscureText
                  ? TextField(
                      obscureText: widget.obscureText,
                      decoration: InputDecoration(
                        hintText: widget.hintText,
                        hintStyle: CustomTextStyle.kHintTextStyle,
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              widget.obscureText = !widget.obscureText;
                            });
                          },
                          child: Icon(
                              widget.obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: CustomColors.ktogelColor),
                        ),
                        border: InputBorder.none,
                      ),
                    )
                  : TextField(
                      obscureText: widget.obscureText,
                      decoration: InputDecoration(
                        hintText: widget.hintText,
                        hintStyle: CustomTextStyle.kHintTextStyle,
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              widget.obscureText = !widget.obscureText;
                            });
                          },
                          child: Icon(
                              widget.obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: CustomColors.ktogel2Color),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
            )),
      ),
    );
  }
}
