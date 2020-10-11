import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:placely_mobile/constants.dart';

class ViewAndAddToCart extends StatelessWidget {
  const ViewAndAddToCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFCBF1E),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            "assets/icons/view.svg",
            height: 18,
          ),
          SizedBox(width: defaultPadding / 2),
          Text(
            "Сонирхох",
            style: TextStyle(color: Colors.white),
          ),
          // it will cover all available spaces
          Spacer(),
          FlatButton.icon(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              height: 18,
            ),
            label: Text(
              "Сагсанд нэмэх",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
