import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 350,
      margin: EdgeInsets.only(bottom: 10, top: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.5),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      child: Center(
        child: Text(
          "Бүртгүүлэх",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
