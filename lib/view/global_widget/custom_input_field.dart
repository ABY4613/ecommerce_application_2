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