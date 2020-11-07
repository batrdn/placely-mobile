import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PictureBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              height: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  child: Container(
                    width: 300,
                    height: 150,
                    child: IconButton(
                      icon: SvgPicture.asset("assets/icons/photo.svg"),
                      onPressed: () {
                      },
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
