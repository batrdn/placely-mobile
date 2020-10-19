import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionField extends StatelessWidget {
  final Function(String) onDescriptionChange;

  DescriptionField({this.onDescriptionChange});

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
          Expanded(
            child: Container(
              height: 80,
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.only(top: 5),
              child: TextField(
                onChanged: (description) =>
                    this.onDescriptionChange(description),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Нэмэлт мэдээлэл',
                    hintStyle: TextStyle(color: Colors.grey[400])),
              ),
            ),
          )
        ],
      ),
    );
  }
}
