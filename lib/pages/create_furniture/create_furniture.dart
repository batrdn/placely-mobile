import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:placely_mobile/animations/fade_animation.dart';
import 'package:placely_mobile/graphql/mutations.dart';
import 'package:placely_mobile/pages/create_furniture/components/create_button.dart';
import 'package:placely_mobile/pages/create_furniture/components/description_field.dart';
import 'package:placely_mobile/pages/create_furniture/components/picture_box.dart';
import 'package:placely_mobile/pages/create_furniture/components/price_field.dart';
import 'package:placely_mobile/pages/create_furniture/components/title_field.dart';
import 'package:placely_mobile/pages/create_furniture/components/type_dropdown.dart';
import 'package:placely_mobile/utils/type_resolver.dart';

class CreateFurniture extends StatefulWidget {
  @override
  _CreateFurnitureState createState() => new _CreateFurnitureState();
}

class _CreateFurnitureState extends State<CreateFurniture> {
  String title;
  String type;
  int price;
  String description;

  @override
  Widget build(BuildContext context) {
    return Mutation(
        options: MutationOptions(documentNode: gql(createFurnitureMutation)),
        builder: (RunMutation runMutation, QueryResult result) {
          return Scaffold(
              resizeToAvoidBottomPadding: false,
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
                        FadeAnimation(
                            1.8,
                            TitleField(
                                onTitleChange: (title) => this.title = title)),
                        FadeAnimation(
                            1.8,
                            PriceField(
                                onPriceChange: (price) => this.price = price)),
                        FadeAnimation(
                            1.8,
                            TypeDropdown(
                                onTypeChange: (type) => this.type = type)),
                        FadeAnimation(1.8, PictureBox()),
                        FadeAnimation(
                            1.8,
                            DescriptionField(
                                onDescriptionChange: (description) =>
                                    this.description = description)),
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
                                          onTap: () async {
                                            print(title);
                                            print(TypeResolver.resolve(type));
                                            print(description);
                                            print(price);
                                            runMutation({
                                              'name': title,
                                              'type':
                                                  TypeResolver.resolve(type),
                                              'price': price,
                                              'description': description
                                            });
                                            print(result.data);
                                            Navigator.of(context).pop();
                                          }),
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
        });
  }
}
