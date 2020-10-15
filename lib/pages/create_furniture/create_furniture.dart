import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:placely_mobile/animations/fade_animation.dart';
import 'package:placely_mobile/pages/create_furniture/components/create_button.dart';
import 'package:placely_mobile/pages/create_furniture/components/description_field.dart';
import 'package:placely_mobile/pages/create_furniture/components/picture_box.dart';
import 'package:placely_mobile/pages/create_furniture/components/price_field.dart';
import 'package:placely_mobile/pages/create_furniture/components/title_field.dart';
import 'package:placely_mobile/pages/create_furniture/components/type_dropdown.dart';

class CreateFurniture extends StatefulWidget {
  @override
  _CreateFurnitureState createState() => new _CreateFurnitureState();
}

class _CreateFurnitureState extends State<CreateFurniture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FadeAnimation(1.8, TitleField()),
              FadeAnimation(1.8, PriceField()),
              FadeAnimation(1.8, TypeDropdown()),
              FadeAnimation(1.8, PictureBox()),
              FadeAnimation(1.8, DescriptionField()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: FadeAnimation(
                        2,
                        Row(
                          children: [
                            GestureDetector(
                                child: CreateButton(),
                                onTap: () async {}
                            ),
                          ],
                        )),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    )));
  }
}
