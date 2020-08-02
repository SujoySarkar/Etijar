import 'package:etijar/UI/sizeconfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CustomTextFieldWithSuffixIcon(String hinttext,IconData icon,Color iconcolor) {
  return Container(
    width: SizeConfig.screenwidth,
    height: SizeConfig.screenheight/14,

    decoration: BoxDecoration(
      border: Border.all(
        color: Color(0xFF8692A6),
      ),
      borderRadius: BorderRadius.all(Radius.circular(SizeConfig.screenwidth*0.01),),
    ),
    child: Padding(
      padding: EdgeInsets.only(
          left: SizeConfig.screenwidth * 0.03,
          right: SizeConfig.screenwidth * 0.03),
      child: Center(
        child: TextField(


          style: TextStyle(
              color: Color(0xFFCDCDCD), fontSize: SizeConfig.screenwidth * 0.034),
          decoration: new InputDecoration(
           //         enabledBorder: const OutlineInputBorder(
//            borderSide: const BorderSide(color: Colors.amber, width:2.0),
//          ),
          contentPadding: EdgeInsets.only(top: SizeConfig.safeBlockVertical*2.5),


            suffixIcon: Icon(icon,color: iconcolor,size: SizeConfig.screenwidth*0.04,),

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
