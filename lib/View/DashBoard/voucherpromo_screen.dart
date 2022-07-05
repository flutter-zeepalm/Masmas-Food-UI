import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/customelevetedbutton.dart';
import 'package:masmasafood/View/DashBoard/notificationScreen.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class VoucherPromoScreen extends StatefulWidget {
  const VoucherPromoScreen({Key? key}) : super(key: key);

  @override
  State<VoucherPromoScreen> createState() => _VoucherPromoScreenState();
}

class _VoucherPromoScreenState extends State<VoucherPromoScreen> {
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
                        'Voucher Promo',
                        style: CustomTextStyle.kStackTitleforSignupProcess,
                      ),
                    ),
                  ),
                ],
              ),
              ReusableContainer(
                  height: 122,
                  width: 325,
                  image: CustomAssets.kPromoAdvertsOne),
              SizedBox(
                height: 20.h,
              ),
              ReusableContainer(
                  height: 122.h,
                  width: 325.w,
                  image: CustomAssets.kPromoAdvertsTwo),
              Padding(
                padding: EdgeInsets.only(top: 200.h, left: 26.w, right: 25.w),
                child: CustomElevetedButton(
                  title: 'Check out',
                  height: 54,
                  width: 324,
                  backgroundcolorOne: CustomColors.kButtonColor,
                  backgroundcolorTwo: CustomColors.kButton2Color,
                  onPressed: () => Get.back(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  String image;
  double height;
  double width;
  ReusableContainer(
      {Key? key,
      required this.width,
      required this.height,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 20.h),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: width.w,
          height: height.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
