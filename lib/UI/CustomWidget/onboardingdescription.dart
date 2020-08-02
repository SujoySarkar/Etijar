import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sizeconfig.dart';

Widget OnboardingDscription(String text){
  return Text(
    text,
    style: TextStyle(
        color: Color(0xFFCDCDCD),
        fontWeight: FontWeight.w300,
        fontSize: SizeConfig.screenwidth*0.037),
  );
}