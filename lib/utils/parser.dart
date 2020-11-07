import 'dart:math';

import 'package:placely_mobile/models/furniture.dart';

class ResponseParser {
  static List<Furniture> parse(List<dynamic> data) {
    List<Furniture> furnitureList = new List();

    for (int index = 0; index < data.length; index++) {
      var furniture = data[index];
      String id = furniture['id'];
      String title = furniture['name'];
      int price = furniture['price'];
      String description = furniture['description'];
      furnitureList.add(Furniture(
          id: id,
          title: title,
          price: price,
          description: description,
          image: "assets/images/chair.png"
      ));
    }

    return furnitureList;
  }

  static generateRandomNumber(int min, int max) {
    var rn = new Random();
    return min + rn.nextInt(max);
  }
}
