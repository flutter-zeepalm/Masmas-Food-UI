import 'package:masmasafood/Data/images_path.dart';

class Testimonials {
  String image;
  String name;
  String dateTime;
  String feedBack;
  int star;
  Testimonials({
    required this.image,
    required this.name,
    required this.dateTime,
    required this.feedBack,
    required this.star,
  });
}

List<Testimonials> listOfTestimonials = [
  Testimonials(
      image: CustomAssets.kDianne,
      name: 'Dianne Russell',
      dateTime: '12 April 2021',
      feedBack:
          'This Is great, So delicious! You Must Here, With Your family . . ',
      star: 5),
  Testimonials(
      image: CustomAssets.kDianne2,
      name: 'Dianne',
      dateTime: '12 April 2021',
      feedBack:
          'This Is great, So delicious! You Must Here, With Your family . . ',
      star: 5),
  Testimonials(
      image: CustomAssets.kDianne,
      name: 'Dianne Russell',
      dateTime: '12 April 2021',
      feedBack:
          'This Is great, So delicious! You Must Here, With Your family . . ',
      star: 5),
  Testimonials(
      image: CustomAssets.kDianne2,
      name: 'Dianne',
      dateTime: '12 April 2021',
      feedBack:
          'This Is great, So delicious! You Must Here, With Your family . . ',
      star: 5),
  Testimonials(
      image: CustomAssets.kDianne,
      name: 'Dianne Russell',
      dateTime: '12 April 2021',
      feedBack:
          'This Is great, So delicious! You Must Here, With Your family . . ',
      star: 5),
  Testimonials(
      image: CustomAssets.kDianne2,
      name: 'Dianne',
      dateTime: '12 April 2021',
      feedBack:
          'This Is great, So delicious! You Must Here, With Your family . . ',
      star: 5),
];
