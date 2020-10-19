import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:placely_mobile/constants.dart';
import 'package:placely_mobile/graphql/queries.dart';
import 'package:placely_mobile/models/furniture.dart';
import 'package:placely_mobile/pages/create_furniture/create_furniture.dart';
import 'package:placely_mobile/pages/furniture/components/body.dart';
import 'package:placely_mobile/utils/parser.dart';

class RetailerDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Query(
        options: QueryOptions(documentNode: gql(getFurnitureQuery)),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          List<Furniture> furniture =
              ResponseParser.parse(result.data['allFurniture']);
          return Scaffold(
            appBar: buildAppBar(context),
            backgroundColor: primaryColor,
            body: Body(furniture),
          );
        });
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: Text('Placely'),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/add.svg"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreateFurniture()));
          },
        ),
      ],
    );
  }
}
