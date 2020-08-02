import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../sizeconfig.dart';

Widget PageDetails(String subtitle){
  return Text(subtitle,style: TextStyle(
      color: Color(0xFFCDCDCD),
      fontWeight: FontWeight.w500,
      fontSize: SizeConfig.screenwidth*0.038),);
}