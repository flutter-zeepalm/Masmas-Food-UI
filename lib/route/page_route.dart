import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masmasafood/Data/typography.dart';
import 'package:masmasafood/View/Chat%20Screens/message_screen.dart';
import 'package:masmasafood/View/Detailmenu_screen.dart';
import 'package:masmasafood/View/Cart%20Shopping/orderdetails_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../Data/colors.dart';
import '../View/DashBoard/home_screen.dart';
import '../View/DashBoard/profile_screen.dart';

List<PersistentBottomNavBarItem> navBarItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(
        Icons.home,
        color: CustomColors.kbottomVavBarIconColor,
      ),
      title: 'Home',
      textStyle: CustomTextStyle.kPersistentTextStyle,
      activeColorPrimary: CustomColors.kbottomVavBarBackgroundColor,
      activeColorSecondary: CustomColors.kPersistentTextColor,
      iconSize: 24.sp,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(
        FontAwesomeIcons.user,
        color: CustomColors.kbottomVavBarIconColor,
      ),
      activeColorPrimary: CustomColors.kbottomVavBarBackgroundColor,
      activeColorSecondary: CustomColors.kPersistentTextColor,
      title: 'profile',
      iconSize: 24.sp,
      textStyle: CustomTextStyle.kPersistentTextStyle,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(
        FontAwesomeIcons.cartShopping,
        color: CustomColors.kbottomVavBarIconColor,
      ),
      activeColorPrimary: CustomColors.kbottomVavBarBackgroundColor,
      activeColorSecondary: CustomColors.kPersistentTextColor,
      title: 'Cart Shopping',
      iconSize: 24.sp,
      textStyle: CustomTextStyle.kPersistentTextStyle,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(
        FontAwesomeIcons.commentDots,
        color: CustomColors.kbottomVavBarIconColor,
      ),
      activeColorPrimary: CustomColors.kbottomVavBarBackgroundColor,
      activeColorSecondary: CustomColors.kPersistentTextColor,
      title: 'chat',
      iconSize: 24.sp,
      textStyle: CustomTextStyle.kPersistentTextStyle,
    )
  ];
}

List<Widget> buildScreens() {
  return [
    const HomeScreen(),
    const ProfileScreen(),
    const OrderDetailsScreen(),
    const MessagesScreen()
  ];
}
