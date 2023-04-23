import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:intern_assignment/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
     theme:ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Color(0xff141418),
     ), 
      debugShowCheckedModeBanner: false,
    );
  }
}