import 'package:flutter/material.dart';

class SizeConfig {
  static double? screenWidth;
  static double screenHeight= 759.2727272727273;

  void init(BuildContext context) {
    screenWidth = 392.72727272727275;
    screenHeight = 759.2727272727273;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return ( inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double? inputWidth) {
  double? screenWidth = SizeConfig.screenWidth;
  return (inputWidth! / 375.0) * screenWidth!;
}
