import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:placely_mobile/constants.dart';
import 'package:placely_mobile/pages/create_furniture/components/picture_box.dart';
import 'package:placely_mobile/pages/home/home.dart';

void main() {
  runApp(MyApp());
}

ValueNotifier<GraphQLClient> client = ValueNotifier(
  GraphQLClient(
    cache: InMemoryCache(),
    link: HttpLink(uri: 'http://192.168.1.4:4000/graphql'),
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Welcome to Placely',
        theme: ThemeData(
          textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
          primaryColor: primaryColor,
          accentColor: primaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: PictureBox(),
      ),
      client: client,
    );
  }
}
