// ignore_for_file: unused_import, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/setLocation_screen.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/signupSuccessNotification_screen.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Components/customelevetedbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class UploadImagePreViewScreen extends StatefulWidget {
  const UploadImagePreViewScreen({Key? key}) : super(key: key);

  @override
  State<UploadImagePreViewScreen> createState() =>
      _UploadImagePreViewScreenState();
}

class _UploadImagePreViewScreenState extends State<UploadImagePreViewScreen> {
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
                      child:
                          Image.asset(CustomAssets.kTopRightBackgroundImage)),
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
                        'Upload Your Photo Profile',
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
                image: CustomAssets.kGalleryIconSvg,
                width: 254,
                height: 238,
                child: Column(
                  children: [],
                ),
                onPressed: () => imagesPicker(ImageSource.gallery),
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
                      Get.to(() => const SetLocationScreen(),
                          transition: Transition.fadeIn);
                    }),
              ),
            ]),
      ),
    );
  }

  imagesPicker(ImageSource source) async {
    final XFile? photo = await ImagePicker().pickImage(source: source);
    setState(() {
      if (photo == null) return;
    });
  }
}

class ReusableWidget extends StatelessWidget {
  String image;
  double width, height;
  Widget child;
  VoidCallback onPressed;
  ReusableWidget(
      {Key? key,
      required this.image,
      required this.width,
      required this.height,
      required this.child,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 62.w, right: 62.w, top: 44.h),
      child: GestureDetector(
        onTap: onPressed,
        child: Card(
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
          child: Container(
            width: width.w,
            height: height.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: CustomColors.kBackgroundColor,
                image: DecorationImage(
                  image: AssetImage(CustomAssets.kChooseImage),
                  fit: BoxFit.cover,
                )),
            child: child,
          ),
        ),
      ),
    );
  }
}
