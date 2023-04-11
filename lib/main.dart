import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce_app/about_page.dart';
import 'package:ecommerce_app/app_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About EcoBambusa',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 143, 211, 141),
      ),
      home: AboutPage(),
      routes: {
        '/about-page': (BuildContext ctx) => AboutPage(),
      },
    );
  }
}

