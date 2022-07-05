// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/signupSuccessNotification_screen.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Components/customelevetedbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class SetLocationScreen extends StatefulWidget {
  const SetLocationScreen({Key? key}) : super(key: key);

  @override
  State<SetLocationScreen> createState() => _SetLocationScreenState();
}

class _SetLocationScreenState extends State<SetLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: Scaffold(
        body: ListView(
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
                      'Set Your Location',
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
            ReusableWidget(
                title: 'Your Location',
                image: CustomAssets.kGalleryIconSvg,
                width: 342,
                height: 147),
            Padding(
              padding: EdgeInsets.only(left: 109.w, top: 270.h, right: 109.w),
              child: CustomElevetedButton(
                  title: 'Next',
                  height: 57,
                  width: 157,
                  backgroundcolorOne: CustomColors.kButtonColor,
                  backgroundcolorTwo: CustomColors.kButton2Color,
                  onPressed: () {
                    Get.to(() => const SignUpSuccessNotifyScreen(),
                        transition: Transition.fadeIn);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableWidget extends StatelessWidget {
  String title;
  String image;
  double width, height;
  ReusableWidget(
      {Key? key,
      required this.title,
      required this.image,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 20.h),
      child: GestureDetector(
        onTap: () {},
        child: Card(
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
          child: Container(
            width: width.w,
            height: height.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: CustomColors.kBackgroundColor,
            ),
            child: Column(children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, left: 11.w),
                    child: SizedBox(
                      width: 33.w,
                      height: 33.h,
                      child: SvgPicture.asset(CustomAssets.kPinMarkIconSvg),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, left: 14.w),
                    child: SizedBox(
                      width: 98.w,
                      height: 20.h,
                      child: Text(
                        title,
                        style: CustomTextStyle.kSetLocationTitle,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 13.h,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 322.w,
                  height: 57.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: CustomColors.kSetLocationColor,
                  ),
                  child: Center(
                    child: Text(
                      'Set Location',
                      style: CustomTextStyle.kSetLocationTextStyle,
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
