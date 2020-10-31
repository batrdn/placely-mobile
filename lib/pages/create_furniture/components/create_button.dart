import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 325,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(15, 163, 177, 1),
            Color.fromRGBO(15, 163, 177, .6),
          ])),
      child: Center(
        child: Text(
          "Үүсгэх",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
