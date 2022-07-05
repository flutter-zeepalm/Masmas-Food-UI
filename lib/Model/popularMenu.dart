import 'package:masmasafood/Data/images_path.dart';

class PopularMenu {
  String image;
  String title;
  String subTitle;
  int price;
  PopularMenu({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
  });
}

List<PopularMenu> popularMenuList = [
  PopularMenu(
      image: CustomAssets.kHerbalPancake,
      title: 'Herbal Pancake',
      subTitle: 'Warung Herbal',
      price: 7),
  PopularMenu(
      image: CustomAssets.kGreenNoddle,
      title: 'Green Noddle',
      subTitle: 'Noodle Home',
      price: 5),
  PopularMenu(
      image: CustomAssets.kFruitSalad,
      title: 'Fruit Salad',
      subTitle: 'Wijie Resto',
      price: 15),
];
