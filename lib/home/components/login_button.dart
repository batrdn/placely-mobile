import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30),
      height: 50,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(15, 163, 177, 1),
            Color.fromRGBO(15, 163, 177, .6),
          ])),
      child: Center(
        child: Text(
          "Нэвтрэх",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
