// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/password_screen.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Components/customelevetedbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class ViaMethodScreen extends StatefulWidget {
  const ViaMethodScreen({Key? key}) : super(key: key);

  @override
  State<ViaMethodScreen> createState() => _ViaMethodScreenState();
}

class _ViaMethodScreenState extends State<ViaMethodScreen> {
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
                      'Forgot password?',
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
                        'Select which contact details should we use to reset your password',
                        style: CustomTextStyle.kStackSubTitleforSignupProcess,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            ReusableWidget(
                title: 'Via sms:',
                firstTitle: '••••',
                middleTitle: '••••',
                endTitle: '4255',
                width: 347,
                height: 105,
                check: true),
            SizedBox(
              height: 20.h,
            ),
            ReusableWidget(
                title: 'Via sms:',
                firstTitle: '••••',
                endTitle: '@gmail.com',
                width: 347,
                height: 105,
                check: false),
            Padding(
              padding: EdgeInsets.only(left: 109.w, top: 180.h, right: 109.w),
              child: CustomElevetedButton(
                  title: 'Next',
                  height: 57,
                  width: 157,
                  backgroundcolorOne: CustomColors.kButtonColor,
                  backgroundcolorTwo: CustomColors.kButton2Color,
                  onPressed: () {
                    Get.to(() => const PasswordScreen());
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableWidget extends StatelessWidget {
  String firstTitle;
  String? middleTitle;
  String title, endTitle;
  double width, height;
  bool check;

  ReusableWidget(
      {Key? key,
      required this.title,
      required this.firstTitle,
      this.middleTitle,
      required this.endTitle,
      required this.width,
      required this.height,
      required this.check})
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
            child: SizedBox(
                width: 209.w,
                height: 52.h,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 22.h,
                    left: 23.w,
                  ),
                  child: check == true
                      ? ListTile(
                          leading: Icon(
                            FontAwesomeIcons.commentDots,
                            color: CustomColors.kbottomVavBarIconColor,
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('Via sms:',
                                style: CustomTextStyle.kVismsTextStyle),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(right: 24.w),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '••••',
                                    style: CustomTextStyle.kVismsSubTextStyle,
                                  ),
                                  Text(
                                    '••••',
                                    style: CustomTextStyle.kVismsSubTextStyle,
                                  ),
                                  Text(
                                    '4255',
                                    style: CustomTextStyle.kVismsSubTextStyle,
                                  )
                                ]),
                          ),
                        )
                      : ListTile(
                          leading: Icon(
                            FontAwesomeIcons.envelopeCircleCheck,
                            color: CustomColors.kbottomVavBarIconColor,
                          ),
                          title: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Via email:',
                              style: CustomTextStyle.kVismsTextStyle,
                            ),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(right: 24.w),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '••••',
                                    style: CustomTextStyle.kVismsSubTextStyle,
                                  ),
                                  Text(
                                    '@gmail.com',
                                    style: CustomTextStyle.kVismsSubTextStyle,
                                  )
                                ]),
                          ),
                        ),
                )),
          ),
        ),
      ),
    );
  }
}
