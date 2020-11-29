import 'package:flutter/material.dart';
import 'package:placely_mobile/constants.dart';

class CategoryList extends StatefulWidget {
  final Function(String) onCategoryChange;

  CategoryList(this.onCategoryChange);

  @override
  _CategoryListState createState() => _CategoryListState(onCategoryChange);
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List categories = ['Бүгд', 'Буйдан', 'Сандал', 'Ширээ', 'Ор', 'Бусад'];
  final Function(String) onCategoryChange;

  _CategoryListState(this.onCategoryChange);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: defaultPadding / 2),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
              onCategoryChange(categories[selectedIndex]);
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: defaultPadding,
              right: index == categories.length - 1 ? defaultPadding : 0,
            ),
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? Colors.white.withOpacity(0.4)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              categories[index],
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
