import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TypeDropdown extends StatelessWidget {
  final Function(String) onTypeChange;

  int _selectedValue = 0;

  TypeDropdown({this.onTypeChange});

  List<DropdownMenuItem> types = [
    DropdownMenuItem(child: Text("Буйдан"), value: 0),
    DropdownMenuItem(child: Text("Ор"), value: 1),
    DropdownMenuItem(child: Text("Ширээ"), value: 2),
    DropdownMenuItem(child: Text("Сандал"), value: 3),
    DropdownMenuItem(child: Text("Бусад"), value: 4)
  ];

  Map<int, String> typeMap = {
    0: "Буйдан",
    1: "Ор",
    2: "Ширээ",
    3: "Сандал",
    4: "Бусад"
  };

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
                          onChanged: (value) =>
                              onTypeChange(this.typeMap[value]))))),
        ],
      ),
    );
  }
}
