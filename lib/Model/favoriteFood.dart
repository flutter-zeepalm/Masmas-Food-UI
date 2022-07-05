import 'package:masmasafood/Data/images_path.dart';

class FavoriteFood {
  String title;
  String price;
  String subTitle;
  String image;
  FavoriteFood({
    required this.title,
    required this.price,
    required this.subTitle,
    required this.image,
  });
}

List<FavoriteFood> foodList = [
  FavoriteFood(
      title: 'Spacy fresh crab',
      price: '\$ 35',
      subTitle: 'Waroenk kita',
      image: CustomAssets.kSpacyFreshCrabOne),
  FavoriteFood(
      title: 'Spacy fresh crab',
      price: '\$ 35',
      subTitle: 'Waroenk kita',
      image: CustomAssets.kSpacyFreshCrabTwo),
  FavoriteFood(
      title: 'Spacy fresh crab',
      price: '\$ 35',
      subTitle: 'Waroenk kita',
      image: CustomAssets.kSpacyFreshCrabThird),
  FavoriteFood(
      title: 'Spacy fresh crab',
      price: '\$ 35',
      subTitle: 'Waroenk kita',
      image: CustomAssets.kSpacyFreshCrabOne),
  FavoriteFood(
      title: 'Spacy fresh crab',
      price: '\$ 35',
      subTitle: 'Waroenk kita',
      image: CustomAssets.kSpacyFreshCrabTwo),
  FavoriteFood(
      title: 'Spacy fresh crab',
      price: '\$ 35',
      subTitle: 'Waroenk kita',
      image: CustomAssets.kSpacyFreshCrabThird),
];
