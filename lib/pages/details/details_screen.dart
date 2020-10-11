import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:placely_mobile/constants.dart';
import 'package:placely_mobile/models/furniture.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Furniture furniture;

  const DetailsScreen({Key key, this.furniture}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: buildAppBar(context),
      body: Body(
        furniture: furniture,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: defaultPadding),
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        'Буцах'.toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/icons/cart.svg'),
          onPressed: () {},
        ),
      ],
    );
  }
}
