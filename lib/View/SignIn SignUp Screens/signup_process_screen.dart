import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customelevetedbutton.dart';
import 'package:masmasafood/Components/customtextfield.dart';
import 'package:masmasafood/Data/images_path.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/paymentmethod_screen.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Data/colors.dart';

class SignUpProcessScreen extends StatefulWidget {
  const SignUpProcessScreen({Key? key}) : super(key: key);

  @override
  State<SignUpProcessScreen> createState() => _SignUpProcessScreenState();
}

class _SignUpProcessScreenState extends State<SignUpProcessScreen> {
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
                        child:
                            Image.asset(CustomAssets.kTopRightBackgroundImage)),
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
                          'Fill in your bio to get started',
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
                            'This data will be displayed in your account profile for security',
                            style:
                                CustomTextStyle.kStackSubTitleforSignupProcess,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: CustomTextField(
                    hintText: 'First Name',
                    width: 325,
                    height: 57,
                    color: CustomColors.kBackgroundColor,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: CustomTextField(
                    hintText: 'Last Name',
                    width: 325,
                    height: 57,
                    color: CustomColors.kBackgroundColor,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: CustomTextField(
                    hintText: 'Mobile Number',
                    width: 325,
                    height: 57,
                    color: CustomColors.kBackgroundColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 109.w, top: 220, right: 109.w),
                  child: CustomElevetedButton(
                      title: 'Next',
                      height: 57,
                      width: 157,
                      backgroundcolorOne: CustomColors.kButtonColor,
                      backgroundcolorTwo: CustomColors.kButton2Color,
                      onPressed: () {
                        Get.to(() => const PaymentMethodScreen(),
                            transition: Transition.leftToRightWithFade);
                      }),
                ),
              ]),
        ));
  }
}
