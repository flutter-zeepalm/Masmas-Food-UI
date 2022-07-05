import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:masmasafood/Data/images_path.dart';
import 'package:masmasafood/Model/chat.dart';
import 'package:masmasafood/View/Chat%20Screens/callringing_screen.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Data/colors.dart';
import '../../Data/typography.dart';

class ChatDetailsScreen extends StatelessWidget {
  ChatModel mychat;
  ChatDetailsScreen({Key? key, required this.mychat}) : super(key: key);

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
                      child: Image.asset(CustomAssets.kDetailImage)),
                  Positioned(
                      top: 38.h,
                      left: 26.w,
                      right: 305.w,
                      child: ArrowBackButton(
                        height: 45,
                        width: 45,
                        icon: Icons.arrow_back_ios_new,
                        onPressed: () => Get.back(),
                      )),
                  Positioned(
                    top: 102.h,
                    left: 25.w,
                    right: 291.w,
                    child: SizedBox(
                      width: 264.w,
                      height: 66.h,
                      child: Text(
                        'Chat',
                        style: CustomTextStyle.kStackTitleforSignupProcess,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 155.h,
                    right: 13.w,
                    left: 15.w,
                    child: Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.r)),
                      child: Container(
                        padding: EdgeInsets.all(7),
                        width: 347.w,
                        height: 93.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22.r),
                          color: CustomColors.kBackgroundColor,
                        ),
                        child: ListTile(
                            leading: Hero(
                              tag: mychat.image,
                              child: Container(
                                width: 62.w,
                                height: 62.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22.r),
                                    color: Colors.transparent,
                                    image: DecorationImage(
                                        image: AssetImage(mychat.image),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            title: Text(
                              mychat.name,
                              style: CustomTextStyle.kChatListTileTextStyle,
                            ),
                            subtitle: Row(
                              children: [
                                Text(
                                  '•',
                                  style:
                                      CustomTextStyle.kChatDetailDotTextStyle,
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Text('Online',
                                    style: CustomTextStyle
                                        .kChatDetailSubTextStyle),
                              ],
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(() => CallRingingScreen(),
                                      transition: Transition.fadeIn);
                                },
                                child: Container(
                                    width: 40.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17.r),
                                      color: CustomColors
                                          .kPhoneIconBackgroundColor,
                                    ),
                                    child: Icon(
                                      FontAwesomeIcons.phone,
                                      color: CustomColors.kPhoneIconColor,
                                      size: 15.sp,
                                    )),
                              ),
                            )),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                child: Container(
                  width: 335.w,
                  height: 223.h,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 120.h, left: 10.w, right: 10.w),
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Container(
                    width: 355.w,
                    height: 74.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: CustomColors.kBackgroundColor,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            mychat.massage,
                            style:
                                CustomTextStyle.kChatDetailTypMessageTextStyle,
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Icon(
                            FontAwesomeIcons.paperPlane,
                            color: CustomColors.kPhoneIconColor,
                          ),
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
