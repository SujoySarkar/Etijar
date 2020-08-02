import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sizeconfig.dart';

Widget StepTextWidget(String text){
  return Text(text,style: TextStyle(
      color: Color(0xFF8692A6),
      fontWeight: FontWeight.w300,
      fontSize: SizeConfig.screenwidth*0.03),);
}