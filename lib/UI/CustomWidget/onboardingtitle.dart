import 'package:etijar/UI/allcolors.dart';
import 'package:etijar/UI/sizeconfig.dart';
import 'package:flutter/cupertino.dart';

Widget OnboardingTitle(String text){
  return Text(
    text,
    style: TextStyle(
        color: ColorData.onboardingtitlecolor,
        fontWeight: FontWeight.w600,
        fontSize: SizeConfig.screenwidth*0.055),
  );
}