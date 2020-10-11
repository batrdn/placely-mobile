import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(left: 10, top: 5, right: 5, bottom: 2.5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(143, 148, 251, .2),
                  blurRadius: 20.0,
                  offset: Offset(0, 10))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.lock,
              color: Color.fromRGBO(15, 163, 177, 1),
              size: 25.0,
            ),
            Expanded(
              child: Container(
                height: 50,
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.only(top: 5),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Нууц үг",
                      hintStyle: TextStyle(color: Colors.grey[400])),
                ),
              ),
            )
          ],
        ));
  }
}
