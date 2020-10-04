import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:placely_mobile/constants.dart';
import 'package:placely_mobile/furniture/furniture_screen.dart';

import 'home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Placely',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
        primaryColor: primaryColor,
        accentColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FurnitureScreen(),
    );
  }
}
