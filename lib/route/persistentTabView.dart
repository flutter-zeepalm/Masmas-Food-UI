import 'package:flutter/material.dart';
import 'package:masmasafood/Data/colors.dart';
import 'package:masmasafood/route/page_route.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class PersistentTabViewScreen extends StatelessWidget {
  const PersistentTabViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,

      screens: buildScreens(),
      items: navBarItems(),

      backgroundColor:
          CustomColors.kBackgroundColor, // Default is Colors.white.
      confineInSafeArea: true,
      navBarStyle: NavBarStyle.style10,
    );
  }
}
