import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:placely_mobile/constants.dart';
import 'package:placely_mobile/graphql/queries.dart';
import 'package:placely_mobile/models/furniture.dart';
import 'package:placely_mobile/utils/parser.dart';

import 'components/body.dart';

class FurnitureScreen extends StatefulWidget {
  @override
  _FurnitureScreenState createState() => new _FurnitureScreenState();
}

class _FurnitureScreenState extends State<FurnitureScreen> {
  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(documentNode: gql(getFurnitureQuery)),
      builder: (QueryResult result,
          {VoidCallback refetch, FetchMore fetchMore}) {
        List<Furniture> furniture = new List();
        if (result.data != null) {
          furniture =
              ResponseParser.parse(result.data['listAllByPublishStatus']);
        }
        return Scaffold(
          appBar: buildAppBar(),
          backgroundColor: primaryColor,
          body: Body(furniture, (String category) => {print(category)}),
        );
      },
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: Text('Placely'),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        ),
      ],
    );
  }
}
