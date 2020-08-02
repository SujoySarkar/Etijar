import 'package:etijar/UI/sizeconfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CustomButton(String text,Function OnPressed){
  return Container(
      height: SizeConfig.safeBlockVertical*7,
      width: SizeConfig.screenwidth,
      decoration: BoxDecoration(
        color: Color(0xFF051F0E),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Material(
          color: Color(0xFF478BFF),
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: InkWell(
            onTap: OnPressed,
            splashColor: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize:SizeConfig.screenwidth*0.04
                    ),
              ),
            ),
          )));
}