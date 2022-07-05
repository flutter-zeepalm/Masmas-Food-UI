import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:masmasafood/Model/chat.dart';
import 'package:masmasafood/View/Chat%20Screens/chatdetails_screen.dart';
import 'package:masmasafood/route/persistentTabView.dart';

import '../../Components/custom_arrowbutton.dart';
import '../../Data/colors.dart';
import '../../Data/images_path.dart';
import '../../Data/typography.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
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
                      left: 26.w,
                      child: ArrowBackButton(
                        height: 45,
                        width: 45,
                        icon: Icons.arrow_back_ios_new,
                        onPressed: () =>
                            Get.offAll(() => PersistentTabViewScreen()),
                      )),
                  Positioned(
                    top: 170.h,
                    left: 23.w,
                    child: SizedBox(
                      width: 264.w,
                      height: 66.h,
                      child: Text(
                        'Chat',
                        style: CustomTextStyle.kStackTitleforSignupProcess,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 500.h,
                child: ListView.builder(
                  itemCount: chatList.length,
                  itemBuilder: (context, index) {
                    return ReusableCard(mychat: chatList[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ReusableCard extends StatelessWidget {
  ChatModel mychat;

  ReusableCard({Key? key, required this.mychat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h, left: 20.w, right: 20.w),
      child: Card(
        elevation: 1,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.r)),
        child: GestureDetector(
          onTap: () {
            Get.to(() => ChatDetailsScreen(mychat: mychat),
                transition: Transition.fadeIn);
          },
          child: Container(
            width: 325.w,
            height: 80.h,
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
                          image: AssetImage(mychat.image), fit: BoxFit.cover)),
                ),
              ),
              title: Text(
                mychat.name,
                style: CustomTextStyle.kChatListTileTextStyle,
              ),
              subtitle: Text(
                mychat.massage,
                style: CustomTextStyle.kChatListTilesubTextStyle,
              ),
              trailing: Text(
                mychat.time,
                style: CustomTextStyle.kChatListTileTralingTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
