import 'package:flutter/services.dart';

class Massage {
  final String? text;
  final String? imagePath;
  final bool isSender;

  Massage({this.text, this.imagePath, this.isSender = false});

  static List<Massage> massages = [
    Massage(text: "hello how are you?", isSender: true,),
    Massage(text: "I'm fine Thank you!"),
    Massage(text: "watch this image", isSender: true, imagePath: assets/images/routes.png),
    Massage(text: "Amesome!",)
    ];
}
