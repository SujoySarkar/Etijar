import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sizeconfig.dart';

Widget ReusableCategory(Color color,String image,name,type){
  return Container(
    width: SizeConfig.screenwidth/4,
    height: SizeConfig.safeBlockVertical*14,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.all(Radius.circular(SizeConfig.screenwidth*0.02),),
    ),
    child: Padding(
      padding:  EdgeInsets.all(SizeConfig.screenwidth*0.03),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: SizeConfig.screenheight*0.03,
            width: SizeConfig.screenwidth*0.06,
            child: Image.asset(image,fit: BoxFit.fill,),
          ),
          Text(name,style: TextStyle(
            color: Colors.white,
            fontSize: SizeConfig.screenwidth*0.028,
            fontWeight: FontWeight.w600,

          ),),
          Text(type,style: TextStyle(
            color: Colors.white,
            fontSize: SizeConfig.screenwidth*0.028,
            fontWeight: FontWeight.w600,

          ),),

        ],
      ),
    ),
  );
}