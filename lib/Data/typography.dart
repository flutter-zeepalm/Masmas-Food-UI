// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masmasafood/Data/colors.dart';

class CustomTextStyle {
  static TextStyle kTextStyleForSplashScreen = GoogleFonts.viga(
    fontSize: ScreenUtil().setSp(40),
    fontWeight: KRegular,
    color: CustomColors.kSplashTextStyleColor,
  );

  static TextStyle kSubTextStyleForSplashScreen = GoogleFonts.inter(
      fontSize: ScreenUtil().setSp(13),
      color: CustomColors.kSplashSubTextStyleColor,
      fontWeight: FontWeight.w600);
  static TextStyle kSubTextStyleForSignin = GoogleFonts.inter(
      fontSize: ScreenUtil().setSp(13),
      color: CustomColors.kSplashSubTextStyleColor,
      fontWeight: FontWeight.w600);
  static TextStyle kTextStyleForOnboardingScreen = TextStyle(
    fontFamily: 'BentonSansBold',
    fontSize: ScreenUtil().setSp(22),
    fontWeight: KRegular,
    color: CustomColors.kSplashSubTextStyleColor,
  );
  static TextStyle kSubTextStyleForOnboardingScreen = TextStyle(
    fontFamily: 'BentonSansBook',
    fontSize: ScreenUtil().setSp(12),
    fontWeight: KRegular,
    color: CustomColors.kBackgroundBlackColor,
  );
  static TextStyle kColumTextStyleForsigninScreen = TextStyle(
    fontSize: ScreenUtil().setSp(20),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kLogintoyourAccountTextColor,
  );
  static TextStyle kStackTitleforSignupProcess = TextStyle(
    fontSize: ScreenUtil().setSp(25),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kLogintoyourAccountTextColor,
  );
  static TextStyle kStackTitleforHomePage = TextStyle(
    fontSize: ScreenUtil().setSp(31),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kLogintoyourAccountTextColor,
  );
  static TextStyle kFavoriteTEXTStyle = TextStyle(
    fontSize: ScreenUtil().setSp(15),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kLogintoyourAccountTextColor,
  );

  static TextStyle kCustomButton = TextStyle(
    fontSize: ScreenUtil().setSp(14),
    fontFamily: 'BentonSansMedium',
    color: CustomColors.kButtonTextColor,
    fontWeight: KRegular,
  );
  static TextStyle kCustomButtonWhiteTitle = TextStyle(
    fontSize: ScreenUtil().setSp(16),
    color: CustomColors.kButton2Color,
  );
  static TextStyle kSocialCustomButton = TextStyle(
    fontSize: ScreenUtil().setSp(14),
    color: CustomColors.kSocialButtonTextColor,
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
  );
  static TextStyle kVoucherCardTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(15),
    color: CustomColors.kSocialButtonTextColor,
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
  );
  static TextStyle kForgetTextButton = TextStyle(
    fontSize: ScreenUtil().setSp(12),
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
    color: CustomColors.kButton2Color,
  );
  static TextStyle kHintTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(14),
    fontFamily: 'BentonSansRegular',
    fontWeight: KRegular,
    color: CustomColors.kHintTextColor,
  );
  static TextStyle kSearchBarHintTextStyle = GoogleFonts.roboto(
    fontSize: ScreenUtil().setSp(12),
    fontWeight: KRegular,
    color: CustomColors.kSearchBarColor.withOpacity(0.2),
  );
  static TextStyle kOrContinueTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(12),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kContinueTextColor,
  );
  static TextStyle kChecckBoxTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(12),
    fontWeight: KRegular,
    fontFamily: 'BentonSansBook',
    color: CustomColors.kBackgroundBlackColor,
  );
  static TextStyle kStackSubTitleforSignupProcess = TextStyle(
    fontSize: ScreenUtil().setSp(12),
    fontWeight: KRegular,
    fontFamily: 'BentonSansBook',
    color: CustomColors.kBackgroundBlackColor,
  );
  static TextStyle kUpkoadImageColumnTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(14),
    fontFamily: 'BentonSansRegular',
    fontWeight: KRegular,
    color: CustomColors.kBackgroundBlackColor,
  );

  static TextStyle kSetLocationTextStyle = GoogleFonts.rubik(
    fontSize: ScreenUtil().setSp(14),
    fontWeight: KMediumFontWeight,
    color: CustomColors.kSetLocationTextColor,
  );
  static TextStyle kSetLocationTitle = TextStyle(
    fontSize: ScreenUtil().setSp(15),
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
    color: CustomColors.kSetLocationTextColor,
  );
  static TextStyle kTitleTextStyleForCongratsScreen = TextStyle(
    fontSize: ScreenUtil().setSp(30),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kCongratsTitleTextColor,
  );
  static TextStyle kSubTitleTextStyleForCongratsScreen = TextStyle(
    fontSize: ScreenUtil().setSp(23),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kCongratsSubTitleTextColor,
  );

  static TextStyle kVerificationCodeButtonTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(33),
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
    color: CustomColors.kVerificationCodeButtonTextColor,
  );
  static TextStyle kVismsTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(16),
    fontFamily: 'BentonSansRegular',
    fontWeight: KRegular,
    color: CustomColors.kVismsTextColor,
  );
  static TextStyle kVismsSubTextStyle = GoogleFonts.manrope(
    fontSize: ScreenUtil().setSp(16),
    fontWeight: KRegular,
    color: CustomColors.kVismsSubTextColor,
  );

  static TextStyle kViewMoreTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(12),
    fontWeight: KRegular,
    fontFamily: 'BentonSansBook',
    color: CustomColors.kViewMoreTextColor,
  );
  static TextStyle kNearestRestaurantTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(15),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kNearestRestaurantTextColor,
  );

  static TextStyle kPersistentTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(12),
    color: CustomColors.kPersistentTextColor,
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
  );
  static TextStyle kChatListTileTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(14),
    color: CustomColors.kChatListTileTextColor,
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
  );
  static TextStyle kNotifyListTileTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(15),
    color: CustomColors.kChatListTileTextColor,
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
  );
  static TextStyle kChatListTilesubTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(14),
    color: CustomColors.kChatListTileSubTitleTextColor,
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
  );
  static TextStyle kChatListTileTralingTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(14),
    color: CustomColors.kChatListTileSubTitleTextColor,
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
  );
  static TextStyle kChatDetailDotTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(14),
    color: CustomColors.kChatDetailDotIconColor,
  );
  static TextStyle kChatDetailSubTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(14),
    color: CustomColors.kChatListTileSubTitleTextColor,
    fontFamily: 'BentonSansRegular',
    fontWeight: KRegular,
  );
  static TextStyle kChatDetailTypMessageTextStyle = GoogleFonts.rubik(
    fontSize: ScreenUtil().setSp(14),
    color: CustomColors.kChatDetailTypMessageTextColor,
    fontWeight: KRegular,
  );
  static TextStyle kCallingScreenTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(25),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kCongratsSubTitleTextColor,
  );
  static TextStyle kCallRiningSubTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(19),
    color: CustomColors.kChatListTileSubTitleTextColor,
    fontFamily: 'BentonSansRegular',
    fontWeight: KRegular,
  );
  static TextStyle kFinishOrderScreenTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(25),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kCongratsSubTitleTextColor,
  );
  static TextStyle kSkipButtonTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(14),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kSkipButtonColor,
  );
  static TextStyle kSlidableTitleTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(15),
    color: CustomColors.kSlidableTileTextColor,
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
  );
  static TextStyle kSlidableSubTitleTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(14),
    color: CustomColors.kSildableSubTitleColor,
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
  );
  static TextStyle kSlidablePriceTitleTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(19),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kSkipButtonColor,
  );

  static TextStyle kSlidableButtonTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(18),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kSlidableButtonTextColor,
  );
  static TextStyle kSlidableMinusButtonTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(25),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kSkipButtonColor,
  );
  static TextStyle kPlaceOrderSheetTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(14),
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
    color: CustomColors.kBackgroundColor,
  );
  static TextStyle kPlaceOrderSheetTotalTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(18),
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
    color: CustomColors.kBackgroundColor,
  );
  static TextStyle kPaymentTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(15),
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
    color: CustomColors.kPaymentTextColor,
  );
  static TextStyle kCustomTextButtonTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(14),
    color: CustomColors.kChatDetailDotIconColor,
    fontFamily: 'BentonSansRegular',
    fontWeight: KRegular,
  );
  static TextStyle kMapBottomTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(15),
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
    color: CustomColors.kPaymentTextColor,
  );
  static TextStyle kMapTitleTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(14),
    color: CustomColors.kChatListTileSubTitleTextColor,
    fontFamily: 'BentonSansRegular',
    fontWeight: KRegular,
  );
  static TextStyle kMapTrackerTitleTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(17),
    color: CustomColors.kPaymentTextColor,
    fontFamily: 'BentonSansRegular',
    fontWeight: KRegular,
  );
  static TextStyle kCallTextStyle = GoogleFonts.rubik(
    fontSize: ScreenUtil().setSp(14),
    color: CustomColors.kSkipButtonColor,
    fontWeight: KRegular,
  );
  static TextStyle kHomeCardTitleTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(16),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kBackgroundBlackColor,
  );
  static TextStyle kHomeSubTitleTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(13),
    fontWeight: KRegular,
    fontFamily: 'BentonSansBook',
    color: CustomColors.kBackgroundBlackColor,
  );
  static TextStyle kHomeBottomCardTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(15),
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
    color: CustomColors.kPaymentTextColor,
  );
  static TextStyle kMHomeBottomCardSubTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(14),
    color: CustomColors.kChatListTileSubTitleTextColor,
    fontFamily: 'BentonSansRegular',
    fontWeight: KRegular,
  );
  static TextStyle kHomeBottomCardPriceTitleTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(22),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kSildableBackgroundColor,
  );
  static TextStyle kchipButtonTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(12),
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
    color: CustomColors.kChip,
  );
  static TextStyle kdarggableTitleTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(27),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kPaymentTextColor,
  );
  static TextStyle kdarggableSubTitleTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(14),
    color: CustomColors.kChatListTileSubTitleTextColor,
    fontFamily: 'BentonSansRegular',
    fontWeight: KRegular,
  );
  static TextStyle kPopularChipTitleTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(12),
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
    color: CustomColors.kCongratsTitleTextColor,
  );
  static TextStyle kMenuDescriptionTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(12),
    wordSpacing: 0.6,
    letterSpacing: 0.2,
    fontWeight: KRegular,
    fontFamily: 'BentonSansBook',
    color: CustomColors.kBackgroundBlackColor,
  );
  static TextStyle kMenuTestionialTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(15),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kSlidableTileTextColor,
  );
  static TextStyle kMenuTestionialTralingTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(13),
    fontFamily: 'BentonSansBold',
    fontWeight: KRegular,
    color: CustomColors.kButton2Color,
  );
  static TextStyle kMenuCardSubTitleTextStyle = TextStyle(
    fontSize: ScreenUtil().setSp(12),
    color: CustomColors.kSildableSubTitleColor,
    fontFamily: 'BentonSansMedium',
    fontWeight: KRegular,
  );
}

FontWeight KBoldFont = FontWeight.bold;
FontWeight KNormalFont = FontWeight.normal;
FontWeight KFontWeight = FontWeight.w100;
FontWeight KFontWeight2 = FontWeight.w200;
FontWeight KFontWeight3 = FontWeight.w300;
FontWeight KRegular = FontWeight.w400;
FontWeight KMediumFontWeight = FontWeight.w500;
FontWeight KSemiBold = FontWeight.w600;
FontWeight KFontWeight7 = FontWeight.w700;
FontWeight KFontWeight8 = FontWeight.w800;
