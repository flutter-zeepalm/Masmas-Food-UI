import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/custom_arrowbutton.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/route/persistentTabView.dart';

import '../../Components/customelevetedbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({Key? key}) : super(key: key);

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.kBackgroundColor,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: Get.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(CustomAssets.kMapBackgroundPng),
                    fit: BoxFit.cover)),
            child: Stack(children: [
              Padding(
                  padding: EdgeInsets.only(top: 21.h, left: 17.w, right: 16.w),
                  child: ArrowBackButton(
                    width: 111,
                    height: 34,
                    onPressed: () {
                      Get.to(() => const PersistentTabViewScreen());
                    },
                    icon: Icons.arrow_back_ios_new,
                  )),
              Positioned(
                top: 59.h,
                left: 160.w,
                child: Image.asset(CustomAssets.kTimeTracking),
              ),
              Positioned(
                top: 110.h,
                left: 192.w,
                child: Image.asset(CustomAssets.kMapcar),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 170.w),
                  child: Image.asset(CustomAssets.kMapLine),
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: ReusableBottomSheetWidget(onPressed: () {})),
            ]),
          ),
        ),
      ),
    );
  }
}

class ReusableBottomSheetWidget extends StatelessWidget {
  VoidCallback onPressed;
  ReusableBottomSheetWidget({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.only(left: 10.w, right: 12.w, top: 12.h),
        height: 237.w,
        width: double.infinity,
        decoration: BoxDecoration(
          color: CustomColors.kSlidableButton2Color,
          borderRadius: BorderRadius.circular(22.r),
          image: DecorationImage(
            opacity: 0.1,
            image: AssetImage(CustomAssets.kTopRightBackgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Text(
                  'Track Orders',
                  style: CustomTextStyle.kMapTrackerTitleTextStyle,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w, right: 9.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: CustomColors.kBackgroundColor,
                    borderRadius: BorderRadius.circular(22.r),
                  ),
                  width: 323.w,
                  height: 87.h,
                  child: ListTile(
                    leading: SizedBox(
                        width: 64.w,
                        height: 64.h,
                        child: Image.asset(CustomAssets.kMrKemplas)),
                    title: SizedBox(
                      width: 264.w,
                      child: Text(
                        'Mr Kemplas',
                        style: CustomTextStyle.kMapBottomTextStyle,
                      ),
                    ),
                    subtitle: Row(children: [
                      Icon(
                        Icons.compost_sharp,
                        color: CustomColors.kPhoneIconColor,
                        size: 14.sp,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        '25 minutes on the way',
                        style: CustomTextStyle.kMapTitleTextStyle,
                      )
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Container(
                      decoration: BoxDecoration(
                        color: CustomColors.kBackgroundColor,
                        borderRadius: BorderRadius.circular(22.r),
                      ),
                      width: 220.w,
                      height: 68.h,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: 18.w,
                                height: 18.h,
                                child: Icon(
                                  Icons.phone,
                                  color: CustomColors.kPhoneIconColor,
                                )),
                            SizedBox(
                              width: 15.w,
                            ),
                            SizedBox(
                                width: 27.w,
                                height: 17.h,
                                child: Text(
                                  'Call',
                                  style: CustomTextStyle.kCallTextStyle,
                                ))
                          ]),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Container(
                        decoration: BoxDecoration(
                          color: CustomColors.kButton2Color,
                          borderRadius: BorderRadius.circular(22.r),
                        ),
                        width: 68.w,
                        height: 68.h,
                        child: Icon(
                          Icons.mail,
                          color: CustomColors.kBackgroundColor,
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
