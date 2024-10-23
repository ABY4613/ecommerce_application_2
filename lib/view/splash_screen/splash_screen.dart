// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:ecommerce_application_2/utilts/color_constants.dart';
import 'package:ecommerce_application_2/utilts/image.constants.dart';
import 'package:ecommerce_application_2/view/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: (context) => OnboardingScreen(),));
    },);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Image.asset(
              ImageConstants.MYAPPLOGO,
              height: 100, 
              width: 125,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 10), 
            Text(
              "Stylish",
              style: GoogleFonts.libreCaslonText(
                color: ColorConstants.PRIMARYCOLOR,
                fontSize: 40,
                fontWeight: FontWeight.bold
              )

            ),
          ],
        ),
      ),
    );
  }
}