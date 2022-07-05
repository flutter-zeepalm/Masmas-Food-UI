import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                      'Notification',
                      style: CustomTextStyle.kStackTitleforSignupProcess,
                    ),
                  ),
                ),
              ],
            ),
            ReusableCard(
                image: CustomAssets.kGroupofcheck,
                title: 'Your order has been taken by the driver',
                subTitle: 'Recently'),
            ReusableCard(
                image: CustomAssets.kGroupofdollor,
                title: "Topup for \$100 was successful",
                subTitle: '10.00 Am'),
            ReusableCard(
                image: CustomAssets.kGroupofcancel,
                title: 'Your order has been canceled',
                subTitle: '22 Juny 2021'),
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  String image;
  String title;
  String subTitle;
  ReusableCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h, left: 20.w, right: 20.w),
      child: GestureDetector(
        onTap: () {},
        child: Card(
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.r)),
          child: Container(
            width: 347.w,
            height: 82.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.r),
              color: CustomColors.kBackgroundColor,
            ),
            child: ListTile(
              leading: Container(
                width: 55.w,
                height: 58.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26.r),
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
              ),
              title: Text(
                title,
                style: CustomTextStyle.kNotifyListTileTextStyle,
              ),
              subtitle: Text(
                subTitle,
                style: CustomTextStyle.kChatListTilesubTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
