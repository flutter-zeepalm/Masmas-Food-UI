import 'package:masmasafood/Data/images_path.dart';

class WijieBarAndResto {
  String image;
  String name;
  String price;
  WijieBarAndResto({
    required this.image,
    required this.name,
    required this.price,
  });
}

List<WijieBarAndResto> barItemsList = [
  WijieBarAndResto(
      image: CustomAssets.kPiza, name: 'Spacy fresh crab', price: '\$12'),
  WijieBarAndResto(
      image: CustomAssets.kMeal, name: 'Spacy fresh crab', price: '\$5'),
  WijieBarAndResto(
      image: CustomAssets.kPiza, name: 'Spacy fresh crab', price: '\$12'),
  WijieBarAndResto(
      image: CustomAssets.kMeal, name: 'Spacy fresh crab', price: '\$6'),
  WijieBarAndResto(
      image: CustomAssets.kPiza, name: 'Spacy fresh crab', price: '\$12'),
];
