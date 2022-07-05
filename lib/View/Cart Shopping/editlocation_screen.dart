import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/View/Cart%20Shopping/SetLocationScreen2.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/setLocation_screen.dart';

import '../../Components/customTextButton.dart';
import '../../Components/custom_arrowbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';

class EditLocationScreen extends StatefulWidget {
  const EditLocationScreen({Key? key}) : super(key: key);

  @override
  State<EditLocationScreen> createState() => _EditLocationScreenState();
}

class _EditLocationScreenState extends State<EditLocationScreen> {
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
              Stack(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child:
                          Image.asset(CustomAssets.kTopRightBackgroundImage)),
                  Positioned(
                      top: 38.h,
                      left: 23.w,
                      right: 307.w,
                      child: ArrowBackButton(
                        height: 45,
                        width: 45,
                        icon: Icons.arrow_back_ios_new,
                        onPressed: () => Get.back(),
                      )),
                  Positioned(
                    top: 102.h,
                    left: 25.w,
                    right: 162.w,
                    child: SizedBox(
                      width: 188.w,
                      height: 33.h,
                      child: Text(
                        'Shipping ',
                        style: CustomTextStyle.kStackTitleforSignupProcess,
                      ),
                    ),
                  ),
                ],
              ),
              ReusableCard(
                  topTitle: 'Order Location',
                  image: CustomAssets.kIconLocation,
                  title: '8502 Preston Rd. Inglewood, Maine 98380',
                  width: 335,
                  height: 107,
                  imageWidth: 33,
                  imageHeight: 33,
                  titleWidth: 250,
                  titleHeight: 40,
                  pressed: () {
                    //  Get.to(() => SetLocationScreen2());
                  }),
              ReusableCard(
                topTitle: 'Deliver To',
                image: CustomAssets.kIconLocation,
                title: '4517 Washington Ave. Manchester, Kentucky 39495',
                width: 335,
                height: 155,
                imageWidth: 33,
                imageHeight: 33,
                titleWidth: 256,
                titleHeight: 40,
                isBottomButton: true,
                pressed: () {},
                textOnPressed: () {
                  Get.to(() => const SetLocationScreen2(),
                      transition: Transition.fadeIn);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  String image;
  String title, topTitle;
  double width, height, imageWidth, imageHeight, titleWidth, titleHeight;
  VoidCallback pressed;
  VoidCallback? textOnPressed;
  bool? isBottomButton;
  ReusableCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.width,
      required this.height,
      required this.imageWidth,
      required this.imageHeight,
      required this.titleWidth,
      required this.titleHeight,
      required this.pressed,
      required this.topTitle,
      this.textOnPressed,
      this.isBottomButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h, left: 20.w, right: 20.w),
      child: GestureDetector(
        onTap: textOnPressed,
        child: Card(
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.r)),
          child: GestureDetector(
            onTap: pressed,
            child: Container(
              width: width.w,
              height: height.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.r),
                color: CustomColors.kBackgroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: Text(topTitle),
                      ),
                    ]),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: imageWidth.w,
                          height: imageHeight.h,
                          child: Image.asset(image),
                        ),
                        SizedBox(width: 14.w),
                        SizedBox(
                          width: titleWidth.w,
                          height: titleHeight.h,
                          child: Text(
                            title,
                            style: CustomTextStyle.kPaymentTextStyle,
                          ),
                        ),
                      ],
                    ),
                    isBottomButton == true
                        ? GestureDetector(
                            onTap: textOnPressed,
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text(
                                'set location',
                                style:
                                    CustomTextStyle.kCustomTextButtonTextStyle,
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
