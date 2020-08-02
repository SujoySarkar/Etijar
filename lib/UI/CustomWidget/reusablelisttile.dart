import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sizeconfig.dart';

Widget ReusableListTile(String imagelink,title,subtitle,trailing,Color color){
  return ListTile(
    leading: Container(height: SizeConfig.screenheight*0.1,width: SizeConfig.screenwidth*0.1,child: Image.asset(imagelink)),
    title:Text(title,style: TextStyle(fontSize: SizeConfig.screenwidth*0.034,color: Colors.white,fontWeight: FontWeight.w500),),
    subtitle:Text(subtitle,style: TextStyle(
      color: Color(0xFF8692A6),
      fontSize: SizeConfig.screenwidth*0.028,
      fontWeight: FontWeight.w500,

    ),),
    trailing:Text(trailing,style: TextStyle(fontSize: SizeConfig.screenwidth*0.034,color: color,fontWeight: FontWeight.w500),),


  );
}