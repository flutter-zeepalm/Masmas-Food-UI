import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customelevetedbutton.dart';
import 'package:masmasafood/Data/images_path.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/uploadPhoto_screen.dart';

import '../../Components/customImageButton.dart';
import '../../Components/custom_arrowbutton.dart';
import '../../Data/colors.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreen();
}

class _PaymentMethodScreen extends State<PaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.kBackgroundColor,
        child: Scaffold(
          body: ListView(children: [
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
                      'Payment Method',
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
                        style: CustomTextStyle.kStackSubTitleforSignupProcess,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomImageButton(
              image: CustomAssets.kPaypalIconSvg,
              width: 86,
              height: 23,
              onPressed: () {},
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomImageButton(
              image: CustomAssets.kVisaIconSvg,
              width: 60,
              height: 60,
              onPressed: () {},
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomImageButton(
              image: CustomAssets.kPayonerIconSvg,
              width: 86,
              height: 23,
              onPressed: () {},
            ),
            Padding(
              padding: EdgeInsets.only(left: 109.w, top: 150.h, right: 109.w),
              child: CustomElevetedButton(
                  title: 'Next',
                  height: 57,
                  width: 157,
                  backgroundcolorOne: CustomColors.kButtonColor,
                  backgroundcolorTwo: CustomColors.kButton2Color,
                  onPressed: () {
                    Get.to(() => UploadImageScreen(),
                        transition: Transition.native);
                  }),
            ),
          ]),
        ));
  }
}
