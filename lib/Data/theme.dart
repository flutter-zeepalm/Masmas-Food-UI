import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masmasafood/Data/colors.dart';

class CustomTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: CustomColors.kBackgroundColor,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    scaffoldBackgroundColor: CustomColors.kBackgroundColor,
    drawerTheme: DrawerThemeData(
      backgroundColor: CustomColors.kBackgroundColor,
    ),
    textTheme: GoogleFonts.vigaTextTheme(),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: Colors.transparent),
  );
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    scaffoldBackgroundColor: CustomColors.kBackgroundBlackColor,
    drawerTheme: DrawerThemeData(
      backgroundColor: CustomColors.kBackgroundBlackColor,
    ),
    colorScheme: const ColorScheme.dark(),
  );
}
