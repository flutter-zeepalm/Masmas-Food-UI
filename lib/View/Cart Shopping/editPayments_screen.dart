// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Data/colors.dart';
import 'package:masmasafood/Data/typography.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Data/images_path.dart';

class EditPaymentsScreen extends StatefulWidget {
  const EditPaymentsScreen({Key? key}) : super(key: key);

  @override
  State<EditPaymentsScreen> createState() => _EditPaymentsScreenState();
}

class _EditPaymentsScreenState extends State<EditPaymentsScreen> {
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
                        'Payment ',
                        style: CustomTextStyle.kStackTitleforSignupProcess,
                      ),
                    ),
                  ),
                ],
              ),
              ReusableCard(
                image: CustomAssets.kPaypal,
                hintText: '2121 6352 8465 ****',
                height: 73,
                width: 335,
                imageWidth: 86,
                imageHeight: 23,
              ),
              ReusableCard(
                image: CustomAssets.kVisa,
                hintText: '2121 6352 8465 ****',
                height: 73,
                width: 335,
                imageWidth: 60,
                imageHeight: 60,
              ),
              ReusableCard(
                image: CustomAssets.kPayoneer,
                hintText: '2121 6352 8465 ****',
                height: 73,
                width: 335,
                imageWidth: 83,
                imageHeight: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  String image;
  String hintText;
  double width, height, imageWidth, imageHeight;
  ReusableCard({
    Key? key,
    required this.image,
    required this.hintText,
    required this.width,
    required this.height,
    required this.imageWidth,
    required this.imageHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 18.h, left: 20.w, right: 20.w),
      child: Card(
        elevation: 3,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.r)),
        child: GestureDetector(
          onTap: () {
            //Get.to(() => );
          },
          child: Container(
            padding: EdgeInsets.only(left: 12.w),
            width: width.w,
            height: height.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.r),
              color: CustomColors.kBackgroundColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: imageWidth.w,
                  height: imageHeight.h,
                  child: Image.asset(image),
                ),
                SizedBox(
                  width: 180.w,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: hintText,
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
