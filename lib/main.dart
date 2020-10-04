import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:placely_mobile/constants.dart';
import 'package:placely_mobile/furniture/furniture_screen.dart';

import 'home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Placely',
      theme: ThemeData(
        // We set Poppins as our default font
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
        primaryColor: primaryColor,
        accentColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FurnitureScreen(),
    );
  }
}
