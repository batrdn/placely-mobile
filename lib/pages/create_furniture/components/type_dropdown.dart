import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TypeDropdown extends StatelessWidget {
  int _selectedValue = 0;

  List<DropdownMenuItem> types = [
    DropdownMenuItem(child: Text("First Item"), value: 0),
    DropdownMenuItem(child: Text("Second Item"), value: 1),
    DropdownMenuItem(child: Text("Third Item"), value: 2),
    DropdownMenuItem(child: Text("Fourth Item"), value: 3)
  ];

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
            Icons.widgets,
            color: Color.fromRGBO(15, 163, 177, 1),
            size: 25.0,
          ),
          Expanded(
              child: Container(
                  height: 50,
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.only(top: 5),
                  child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          value: _selectedValue,
                          items: types,
                          onChanged: (value) => print(value))))),
        ],
      ),
    );
  }
}
