import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:placely_mobile/constants.dart';
import 'package:placely_mobile/pages/furniture/components/body.dart';

class RetailerDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: primaryColor,
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: Text('Placely'),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/add.svg"),
          onPressed: () {},
        ),
      ],
    );
  }
}
