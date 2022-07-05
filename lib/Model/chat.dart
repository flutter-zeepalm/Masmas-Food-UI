import 'package:masmasafood/Data/images_path.dart';

class ChatModel {
  int uid;
  String name;
  String massage;
  List listMessage;
  String time;
  String image;
  ChatModel(
      {required this.uid,
      required this.name,
      required this.massage,
      required this.time,
      required this.listMessage,
      required this.image});
}

List chatList = [
  ChatModel(
      uid: 1,
      name: 'Louis Kelly',
      massage: 'Your Order Just Arrived!',
      time: '20:00',
      listMessage: [
        'Okay, for what level of spiciness?',
        "Okay I'm waiting  👍",
      ],
      image: CustomAssets.klouisKelly),
  ChatModel(
    uid: 2,
    name: 'Paul Koch',
    massage: 'Your Order Just Arrived!',
    time: '20:00',
    listMessage: [
      'Okay, for what level of spiciness?',
      "Okay I'm waiting  👍",
    ],
    image: CustomAssets.kpaulKoch,
  ),
  ChatModel(
      uid: 3,
      name: 'Carla Klein',
      massage: 'Your Order Just Arrived!',
      time: '20:00',
      listMessage: [
        'Okay, for what level of spiciness?',
        "Okay I'm waiting  👍",
      ],
      image: CustomAssets.kcarlaKlein),
];
