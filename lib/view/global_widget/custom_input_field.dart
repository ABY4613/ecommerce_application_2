// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_application_2/utilts/color_constants.dart';
import 'package:flutter/material.dart';

class custom_input_field extends StatelessWidget {
  const custom_input_field({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
     decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
       labelText: 'Password',
       labelStyle: TextStyle(color: ColorConstants.GREYSHADE2),
       suffixIcon:  Icon(Icons.remove_red_eye),
       filled: true,
       fillColor: ColorConstants.GREYSHADE3,
       border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(12),
         borderSide: BorderSide(color: ColorConstants.GREYSHADE4),
       ),
     ),
               );
  }
}


class custom_text_field extends StatelessWidget {
  const custom_text_field({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       color: Colors.white,
        border: Border.all(
                color: ColorConstants.WHITE, 
                width: 4, 
              ),
       boxShadow: [
         BoxShadow(
           offset: Offset(0,4),
           blurRadius: 9,
           color: ColorConstants.GREYSHADE3,
         )]),
      child: TextField(
           decoration: 
           InputDecoration(
              prefixIcon: Icon(Icons.search),
             hintText: 'Search any Product',
             suffixIcon:  Icon(Icons.mic),
             border: OutlineInputBorder(
        
         borderSide: BorderSide(color: ColorConstants.WHITE),
       ),
             
             
            
            
               
             ),
           ),
           
          );
  }
}