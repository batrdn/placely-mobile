import 'package:flutter/material.dart';

class FingerPrintButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      height: 50,
      width: 45,
      decoration: BoxDecoration(
          border:
          Border.all(color: Colors.grey, width: 0.5),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white),
      child: Center(
        child: Icon(
          Icons.fingerprint,
          color: Color.fromRGBO(15, 163, 177, 1),
          size: 40,
        ),
      ),
    );
  }
}
