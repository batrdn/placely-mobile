import 'package:flutter/material.dart';
import 'package:placely_mobile/constants.dart';
import 'package:placely_mobile/models/furniture.dart';

import 'view_and_add_to_cart.dart';
import 'furniture_image.dart';

class Body extends StatelessWidget {
  final Furniture furniture;

  const Body({Key key, this.furniture}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Hero(
                      tag: '${furniture.id}',
                      child: FurnitureImage(
                        size: size,
                        image: furniture.image,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: defaultPadding / 2),
                    child: Text(
                      furniture.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    '${furniture.price}₮',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: secondaryColor,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: defaultPadding / 2),
                    child: Text(
                      furniture.description,
                      style: TextStyle(color: textLightColor),
                    ),
                  ),
                  SizedBox(height: defaultPadding),
                ],
              ),
            ),
            ViewAndAddToCart(),
          ],
        ),
      ),
    );
  }
}
