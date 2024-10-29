// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_application_2/dummy_db.dart';
import 'package:ecommerce_application_2/utilts/color_constants.dart';
import 'package:ecommerce_application_2/utilts/image.constants.dart';
import 'package:ecommerce_application_2/view/global_widget/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            child: Icon(
              Icons.menu,
              size: 24,
            ),
          ),
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              ImageConstants.MYAPPLOGO,
              height: 31,
              width: 38,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 9),
            Text("Stylish",
                style: GoogleFonts.libreCaslonText(
                    color: ColorConstants.BLACK,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          CircleAvatar(radius: 20),
          SizedBox(
            width: 12,
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 16),

          //seciton 1 - search field
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: custom_text_field(),
          ),
          SizedBox(height: 16),
          // seciton 2 - All featured section
          _buildAllFeaturedSection(),
          // seciton - 3 - carrousel seciton
         
        CarouselSlider(
  options: CarouselOptions(height: 400.0),
  items:List.generate(
              DummyDb().featuredItemeList.length,
              (index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:Container(
            width: 350,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConstants.ADS),
                fit: BoxFit.cover)))
                  ),
                  
                ],
              ),
            ),
)
        ],
      ),
      

    );
  }

  Column _buildAllFeaturedSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Row(
            children: [
              Text(
                "All Featured",
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    color: ColorConstants.PRIMARYCOLOR,
                    borderRadius: BorderRadius.circular(6)),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  children: [
                    Text(
                      "sort",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                      ),
                    ),
                    Icon(
                      Icons.swap_vert,
                      size: 16,
                    )
                  ],
                ),
              ),
              SizedBox(width: 12),
              Container(
                decoration: BoxDecoration(
                    color: ColorConstants.PRIMARYCOLOR,
                    borderRadius: BorderRadius.circular(6)),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Row(
                  children: [
                    Text("Filter",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                        )),
                    Icon(
                      Icons.filter_alt_outlined,
                      size: 16,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              DummyDb().featuredItemeList.length,
              (index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          DummyDb().featuredItemeList[index]["imageUrl"]),
                      radius: 28,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(DummyDb().featuredItemeList[index]["name"]),

                  SizedBox(height: 9,),
                  
                ],
              ),
            ),
            
          ),
        ),
       
        ]
        );
        
  }
}