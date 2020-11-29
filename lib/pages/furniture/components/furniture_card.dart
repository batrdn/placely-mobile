import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:placely_mobile/constants.dart';

class FurnitureCard extends StatelessWidget {
  const FurnitureCard({
    Key key,
    this.itemIndex,
    this.furniture,
    this.press,
  }) : super(key: key);

  final int itemIndex;
  final dynamic furniture;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      height: 160,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: itemIndex.isEven ? blueColor : secondaryColor,
                boxShadow: [defaultShadow],
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: '${furniture.id}',
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                  height: 160,
                  width: 200,
                  child: Image.network(
                    'http://192.168.1.7:4000/placely/images/' + furniture.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Text(
                        furniture.title,
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 1.5, // 30 padding
                        vertical: defaultPadding / 4, // 5 top and bottom
                      ),
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),
                      ),
                      child: Text(
                        "${furniture.price}",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
