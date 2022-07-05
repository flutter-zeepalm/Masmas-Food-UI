import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customSocialButton.dart';
import 'package:masmasafood/Components/customTextButton.dart';
import 'package:masmasafood/Components/customelevetedbutton.dart';
import 'package:masmasafood/Data/colors.dart';
import 'package:masmasafood/Data/images_path.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/signup_screen.dart';

import '../../Components/customtextfield.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
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
                      padding:
                          EdgeInsets.only(left: 100.w, right: 100.w, top: 47.h),
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
                            child: Text(
                              'Deliever Favorite Food',
                              style:
                                  CustomTextStyle.kSubTextStyleForSplashScreen,
                            )),
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
                    width: 217.w,
                    height: 26.h,
                    child: Text(
                      'Login To Your Account',
                      style: CustomTextStyle.kColumTextStyleForsigninScreen,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomTextField(
                  hintText: ' Email',
                  width: 325,
                  height: 57,
                  color: CustomColors.kBackgroundColor,
                ),
                SizedBox(
                  height: 14.h,
                ),
                CustomTextField(
                  hintText: ' Password',
                  width: 325,
                  height: 57,
                  color: CustomColors.kBackgroundColor,
                ),
                SizedBox(
                  height: 14.h,
                ),
                Center(
                    child: Text(
                  'Or Continue With',
                  style: CustomTextStyle.kOrContinueTextStyle,
                )),
                SizedBox(
                  height: 14.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 25.w,
                    right: 25.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ScoialButton(
                        title: 'Facebook',
                        height: 27,
                        width: 157,
                        onPressed: () {},
                        image: CustomAssets.kFacebookButtonIconSvg,
                      ),
                      SizedBox(
                        width: 21.w,
                      ),
                      ScoialButton(
                        title: 'Google',
                        height: 27,
                        width: 157,
                        onPressed: () {},
                        image: CustomAssets.kGoogleButton,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Center(
                    child: CustomTextButton(
                  title: 'Forgot Your Password?',
                  isfontSizeSmall: true,
                  onPressed: () {},
                )),
                SizedBox(
                  height: 16.h,
                ),
                CustomElevetedButton(
                    backgroundcolorOne: CustomColors.kButtonColor,
                    backgroundcolorTwo: CustomColors.kButton2Color,
                    title: 'Login',
                    height: 56,
                    width: 141,
                    onPressed: () {
                      Get.to(() => const SignUpScreen(),
                          transition: Transition.downToUp);
                    }),
              ]),
            ]),
      ),
    );
  }
}
