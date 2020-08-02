import 'package:etijar/UI/sizeconfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CustomTextField(String hinttext) {
  return Container(
    width: SizeConfig.screenwidth,
    height: SizeConfig.screenheight/14,
    decoration: BoxDecoration(
      border: Border.all(
        color: Color(0xFF8692A6),
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(SizeConfig.screenwidth * 0.01),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.only(
          left: SizeConfig.screenwidth * 0.03,
          right: SizeConfig.screenwidth * 0.03),
      child: Center(
        child: TextField(

          style: TextStyle(
              color: Color(0xFFCDCDCD),
              fontSize: SizeConfig.screenwidth * 0.034),
          decoration: new InputDecoration.collapsed(
            hintText: hinttext,
            hintStyle: TextStyle(
                color: Color(0xFFCDCDCD),
                fontSize: SizeConfig.screenwidth * 0.034),
          ),
        ),
      ),
    ),
  );
}
