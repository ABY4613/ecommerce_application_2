// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_application_2/utilts/color_constants.dart';
import 'package:ecommerce_application_2/utilts/image.constants.dart';
import 'package:ecommerce_application_2/view/global_widget/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List <String> list =[
"My Status",
"hari",
"sree",
"kumar",
"babu",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageConstants.MYAPPLOGO,
              height: 31, 
              width: 38,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 9), 
            Text(
              "Stylish",
              style: GoogleFonts.libreCaslonText(
                color: ColorConstants.PRIMARYCOLOR,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),

            ),
          ],
        ),
        actions: [CircleAvatar()],
        ),
        body: Column(children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: custom_text_field(),
             ),
             _buildAllFeaturedSection(),
        ],
        ),
        
        
        );
 
 
  }

  Column _buildAllFeaturedSection() {
    return Column(
      children: [
        Row(
          children: [
            Text("All Featured"),
            Spacer(),
            Container(
              child: Row(
                children: [Text("sort"), Icon(Icons.swap_vert)],
              ),
            ),
            Container(
              child: Row(
                children: [Text("Filter"), Icon(Icons.filter_alt_outlined)],
              ),
            )
          ],
        ),
        SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              5,
              (index) => Column(
                children: [
                  CircleAvatar(
                    radius: 28,
                  ),
                  SizedBox(height: 4),
                  Text(list[index],),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}















































 //  Spacer(),
                //  Text("Sort"),
                //  Icon(Icons.swap_vert),
                //  Text("Filter"),
                //   Icon(Icons.filter_alt_outlined),