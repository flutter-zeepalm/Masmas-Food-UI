// ignore_for_file: file_names

import 'package:masmasafood/Data/images_path.dart';

class OnBoarding {
  String title;
  String image;
  String subTitle;
  OnBoarding({
    required this.title,
    required this.image,
    required this.subTitle,
  });
}

List<OnBoarding> pageViewList = [
  OnBoarding(
      title: 'Find your  Comfort Food here',
      image: CustomAssets.kOnBoardingScreenSvg,
      subTitle:
          'Here You Can find a chef or dish for every taste and color. Enjoy!'),
  OnBoarding(
      title: 'Food Ninja is Where Your Comfort Food Lives',
      image: CustomAssets.kOnBoardingScreenTwoSvg,
      subTitle: 'Enjoy a fast and smooth food delivery at your doorstep')
];
