import 'package:flutter/material.dart';
import 'package:placely_mobile/constants.dart';
import 'package:placely_mobile/details/details_screen.dart';
import 'package:placely_mobile/model/furniture.dart';

import 'category_list.dart';
import 'furniture_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          CategoryList(),
          SizedBox(height: defaultPadding / 2),
          Expanded(
            child: Stack(
              children: <Widget>[
                // Our background
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: furniture.length,
                  itemBuilder: (context, index) => FurnitureCard(
                    itemIndex: index,
                    furniture: furniture[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            furniture: furniture[index],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
