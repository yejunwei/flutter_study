import 'package:flutter/material.dart';

class AppColors{

  static Color primaryColor = const Color(0xff8879f2);

  static Color getColor(String colorStr){

    if(colorStr != null){
      if(colorStr.substring(0,1) != "#"){
        return primaryColor;
      }
      String substring = colorStr.substring(1, colorStr.length);
      print(substring);
      return Color(int.parse('0xff'+substring));
    }
    return primaryColor;
  }
}