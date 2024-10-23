// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_application_2/utilts/color_constants.dart';
import 'package:ecommerce_application_2/utilts/image.constants.dart';
import 'package:ecommerce_application_2/view/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 17),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "1",
                style: GoogleFonts.montserrat(
                    color: ColorConstants.BLACK,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Text(
                "/3",
                style: GoogleFonts.montserrat(
                    color: ColorConstants.GREYSHADE1,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ],
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 17.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: (context) => LoginScreen(),));
                },
                child: Text(
                  "Skip",
                  style: GoogleFonts.montserrat(
                      color: ColorConstants.BLACK,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
      body: 
             Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 22),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageConstants.ONBOARDING1,
                      height: 300,
                      width: 300,
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Choose Products",
                      style: GoogleFonts.montserrat(
                          color: ColorConstants.BLACK,
                          fontWeight: FontWeight.w900,
                          fontSize: 24),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          color: ColorConstants.GREYSHADE1,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          
        
      
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Prev",
              style: GoogleFonts.montserrat(
                  color: ColorConstants.GREYSHADE1,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            InkWell(
               onTap: () {
                 Navigator.push(
        context, MaterialPageRoute(
          builder: (context) => LoginScreen(),));
               },
              child: Text(
                "Next",
                style: GoogleFonts.montserrat(
                    color: ColorConstants.PRIMARYCOLOR,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}































// // ignore_for_file: prefer_const_constructors

// import 'package:ecommerce_application_2/utilts/color_constants.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:google_fonts/google_fonts.dart';

// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({super.key});

//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   PageController pageController = PageController(initialPage: 0);
//   int currentPosition = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar:AppBar(
//       leading: Row(
//         children: [
//           Text("1"),
//           Text("/3")
//         ],
//       ),
//       actions: [Text("Skip")],
//     ),
   

//       body:Column(
//         children: [
//           PageView(
            
//             controller: PageController(),
//             scrollDirection: Axis.horizontal,
//             children: [
//               Container(
//                 color: Colors.white,
//                 child: Column(children: [
//                   Padding(padding: EdgeInsets.all(30),
//                   child:Image.asset(
//                   "assets/images/onboarding1.png"),
//                   ),
//                   Center(
//                     child: Text(
//                       "Choose Products",
//                   style: TextStyle(
//                     color:Colors.black,
//                     fontSize: 29,
//                     fontWeight: FontWeight.bold,
//                   ),
//                     ),
//                   ),
//                         Padding(
//                           padding: const EdgeInsets.all(18.0),
//                           child: Text(
                                          
//                     "Amet minim mollit non deserunt ullamco est"
//                           "sit aliqua dolor do amet sint.Velit officia"
//                           "consequat duis enim velit mollit.",
//                                         style: TextStyle(
//                                           color:Colors.grey,
//                                           fontSize: 19,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                         ),
//                 ],)
//                 ),
                
              
//                 Container(
//                 color: Colors.white,
//                 child: Column(children: [
//                   Padding(padding: EdgeInsets.all(30),
//                   child:Image.asset(
//                   "assets/images/onboarding2.png",
//                    height: 233.3, 
//                   width: 350,
//                   fit: BoxFit.fill,
//                 ),
//                   ),
//                   Center(
//                     child: Text(
//                       "Make Payment",
//                   style: TextStyle(
//                     color:Colors.black,
//                     fontSize: 29,
//                     fontWeight: FontWeight.bold,
//                   ),
//                     ),
//                   ),
//                         Padding(
//                           padding: const EdgeInsets.all(18.0),
//                           child: Text(
                                          
//                     "Amet minim mollit non deserunt ullamco est"
//                           "sit aliqua dolor do amet sint.Velit officia"
//                           "consequat duis enim velit mollit.",
//                                         style: TextStyle(
//                                           color:Colors.grey,
//                                           fontSize: 19,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                         ),
//                 ],)
//                 ),
//                 Container(
//                 color: Colors.white,
//                 child: Column(children: [
//                   Padding(padding: EdgeInsets.all(30),
//                   child:Image.asset(
//                   "assets/images/onboarding3.jpg",
//                   height: 350, 
//                   width: 350,
//                   fit: BoxFit.fill,
//                 ),
//                   ),
//                   Center(
//                     child: Text(
//                       "Get Your Order",
//                   style: TextStyle(
//                     color:Colors.black,
//                     fontSize: 29,
//                     fontWeight: FontWeight.bold,
//                   ),
//                     ),
//                   ),
//                         Padding(
//                           padding: const EdgeInsets.all(18.0),
//                           child: Text(
                                          
//                     "Amet minim mollit non deserunt ullamco est"
//                           "sit aliqua dolor do amet sint.Velit officia"
//                           "consequat duis enim velit mollit.",
//                                         style: TextStyle(
//                                           color:Colors.grey,
//                                           fontSize: 19,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                         ),
//                 ],)
//                 ),
//               ],
//             ),
          
//         ],
//       ),
//             bottomNavigationBar: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [Text("Next",
//         style: GoogleFonts.montserrat(
//           color: ColorConstants.PRIMARYCOLOR,
//           fontWeight: FontWeight.w600,
//           fontSize: 18
//         ),
//         )],
//       ),
//       );
   


       
//   }
// }

        //  Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
          
      //     children: [
      //       Image.asset(
      //         "assets/images/fashion shop-rafiki 1.png",
            //   height: 300, 
            //   width: 300,
            //   fit: BoxFit.fill,
            // ),
      //       SizedBox(width: 10), 
      //       Text(
              // "Choose Products",
              // style: TextStyle(
              //   color:Colors.black,
              //   fontSize: 29,
              //   fontWeight: FontWeight.bold,
              // ),
      //       ),
      //        SizedBox(width: 10), 
            // Text(
                
            //     "Amet minim mollit non deserunt ullamco est"
            //     "sit aliqua dolor do amet sint.Velit officia"
            //         "consequat duis enim velit mollit.",
            //   style: TextStyle(
            //     color:Colors.grey,
            //     fontSize: 19,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            
      //     ],
      //   ),
      // ),
   // Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          
          // children: [
          //   Image.asset(
          //     "assets/images/fashion shop-rafiki 1.png",
          //     height: 300, 
          //     width: 300,
          //     fit: BoxFit.fill,
          //   ),
          //   SizedBox(width: 10), 
          //   Text(
          //     "Choose Products",
          //     style: TextStyle(
          //       color:Colors.black,
          //       fontSize: 29,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          //    SizedBox(width: 10), 
          //   Text(
                
          //       "Amet minim mollit non deserunt ullamco est"
          //       "sit aliqua dolor do amet sint.Velit officia"
          //           "consequat duis enim velit mollit.",
          //     style: TextStyle(
          //       color:Colors.grey,
          //       fontSize: 19,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),