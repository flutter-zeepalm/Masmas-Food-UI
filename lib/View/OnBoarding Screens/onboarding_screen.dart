import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Components/OnBoarding_widget.dart';
import 'package:masmasafood/View/SignIn%20SignUp%20Screens/signin_screen.dart';

import '../../Components/customelevetedbutton.dart';
import '../../Data/colors.dart';
import '../../Model/onBoarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 700.h,
              child: PageView.builder(
                controller: controller,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: pageViewList.length,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemBuilder: (context, index) {
                  return OnboardingWidget(
                    onBoarding: pageViewList[index],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 109.w,
                right: 109.w,
              ),
              child: CustomElevetedButton(
                  title: 'Next',
                  height: 57,
                  width: 157,
                  backgroundcolorOne: CustomColors.kButtonColor,
                  backgroundcolorTwo: CustomColors.kButton2Color,
                  onPressed: () {
                    if (currentIndex == 0) {
                      // currentIndex++;
                      controller.animateToPage(1,
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease);
                    } else if (currentIndex == 1) {
                      Get.to(() => const SigninScreen(),
                          transition: Transition.fade);
                    }
                    setState(() {});
                  }),
            ),
          ]),
    );
  }
}
