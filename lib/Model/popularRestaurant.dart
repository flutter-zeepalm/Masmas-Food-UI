import 'package:masmasafood/Data/images_path.dart';

class PopularRestaurant {
  String image;
  String title;
  String subTitle;
  PopularRestaurant({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<PopularRestaurant> restaurantList = [
  PopularRestaurant(
      image: CustomAssets.kVeganResto,
      title: 'Vegan Resto',
      subTitle: '12 Mins'),
  PopularRestaurant(
      image: CustomAssets.kHeahtlyFood,
      title: 'Healthy Food',
      subTitle: '8 Mins'),
  PopularRestaurant(
      image: CustomAssets.kGoodFood, title: 'Good Food', subTitle: '12 Mins'),
  PopularRestaurant(
      image: CustomAssets.kSmart, title: 'Smart Resto', subTitle: '8 Mins'),
  PopularRestaurant(
      image: CustomAssets.kChef, title: 'Chef', subTitle: '3 Mins'),
  PopularRestaurant(
      image: CustomAssets.lRateRestaurant,
      title: 'Vegan Resto',
      subTitle: '10 Mins'),
];
