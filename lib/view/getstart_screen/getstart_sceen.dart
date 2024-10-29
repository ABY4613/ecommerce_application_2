import 'package:ecommerce_application_2/utilts/color_constants.dart';
import 'package:ecommerce_application_2/utilts/image.constants.dart';
import 'package:ecommerce_application_2/view/global_widget/custom_botton.dart';
import 'package:ecommerce_application_2/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ImageConstants.GETSTART))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 70, bottom: 34, left: 37, right: 37),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    ColorConstants.BLACK.withOpacity(0),
                    ColorConstants.BLACK.withOpacity(.6),
                    ColorConstants.BLACK.withOpacity(.7),
                    ColorConstants.BLACK.withOpacity(1),
                  ])),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "You want Authentic, here you go!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        color: ColorConstants.WHITE,
                        fontSize: 34,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 14),
                  Text(
                    "You want Authentic, here you go!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      color: ColorConstants.WHITE,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 44),
                  CustomButton(
                    buttonText: "Get Started",
                    onButtonPressed: () {
                     Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: (context) => HomeScreen(),));
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}