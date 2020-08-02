import 'package:etijar/UI/sizeconfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget PinTextField() {
  return Container(
    height: SizeConfig.screenwidth * 0.11,
    width: SizeConfig.screenwidth * 0.11,
    decoration: BoxDecoration(
      border: Border.all(
        color: Color(0xFF8692A6),
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(SizeConfig.screenwidth * 0.01),
      ),
    ),
    child: Center(
      child: TextField(
        obscureText: true,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: SizeConfig.screenwidth * 0.05),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: SizeConfig.screenwidth*0.025)
        ),
      ),
    ),
  );
}
