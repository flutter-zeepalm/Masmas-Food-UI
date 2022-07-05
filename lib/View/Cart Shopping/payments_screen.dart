import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customBottomSheet.dart';
import 'package:masmasafood/Components/customTextButton.dart';
import 'package:masmasafood/Data/colors.dart';
import 'package:masmasafood/View/Cart%20Shopping/editPayments_screen.dart';
import 'package:masmasafood/View/Cart%20Shopping/editlocation_screen.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';
import '../../Model/placeOrder.dart';

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({Key? key}) : super(key: key);

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
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
                        'Confirm Order ',
                        style: CustomTextStyle.kStackTitleforSignupProcess,
                      ),
                    ),
                  ),
                ],
              ),
              ReusableCard(
                  image: CustomAssets.kIconLocation,
                  title: '4517 Washington Ave. Manchester, Kentucky 39495',
                  width: 335,
                  height: 100,
                  imageHeight: 33,
                  imageWidth: 33,
                  titleHeight: 40,
                  titleWidth: 256,
                  pressed: () {
                    Get.to(() => const EditLocationScreen(),
                        transition: Transition.fadeIn);
                  }),
              SizedBox(
                height: 20.h,
              ),
              ReusableCard(
                image: CustomAssets.kPaypal,
                title: '2121 6352 8465 ****',
                width: 335,
                height: 108,
                imageHeight: 23,
                imageWidth: 86,
                titleHeight: 15,
                titleWidth: 144,
                pressed: () {
                  Get.to(() => const EditPaymentsScreen(),
                      transition: Transition.fadeIn);
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 107.h,
                ),
                child: SizedBox(
                  height: 204.h,
                  child: BottomSheetWidget(onPressed: () {
                    //Get.to(() => const PaymentsScreen());
                  }),
                ),
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
  String title;
  double width, height, imageWidth, imageHeight, titleWidth, titleHeight;
  VoidCallback pressed;
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
      required this.pressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h, left: 20.w, right: 20.w),
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
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: const Text('Deliver To'),
                      ),
                      CustomTextButton(title: 'Edit', onPressed: pressed)
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.h, left: 7.w),
                      child: Container(
                        width: imageWidth.w,
                        height: imageHeight.h,
                        child: Image.asset(image),
                      ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
