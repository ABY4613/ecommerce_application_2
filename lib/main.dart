// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_application_2/utilts/color_constants.dart';
import 'package:ecommerce_application_2/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: ColorConstants.SCAFFOLDBG
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen());
            
  }
}
