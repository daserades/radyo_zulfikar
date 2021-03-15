import 'package:flutter/material.dart';
import 'package:radyo_zulfikar/Pages/SplashScreen.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Radyo Zülfikar',
      theme: ThemeData(
        // primarySwatch: Colors.blue,

        brightness: Brightness.light,
        primaryColor: HexColor('#6E8FFF'),
        accentColor: HexColor('#6E8FFF'),
      ),
      home: SplashScreen(),
    );
  }
}
