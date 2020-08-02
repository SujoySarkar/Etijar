import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sizeconfig.dart';

Widget ReusableStock(String name,website,image,price,percentage, Function onClick){
  return GestureDetector(
    onTap: onClick,
    child: Container(
      width: SizeConfig.screenwidth/2.8,
      height: SizeConfig.safeBlockVertical*18,
      decoration: BoxDecoration(
        color: Color(0xFF1F3151),
        borderRadius: BorderRadius.all(Radius.circular(SizeConfig.screenwidth*0.02),),
      ),
      child: Padding(
        padding:  EdgeInsets.only(top: SizeConfig.screenwidth*0.03,bottom: SizeConfig.screenwidth*0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.only(left: SizeConfig.screenwidth*0.04,right: SizeConfig.screenwidth*0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: <Widget>[
                  Container(
                    height: SizeConfig.screenheight*0.03,
                    width: SizeConfig.screenwidth*0.09,
                    child: Image.asset(image,fit: BoxFit.fill,),
                  ),
                  SizedBox(height: SizeConfig.screenwidth*0.02,),
                  Text(name,style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.screenwidth*0.04,
                    fontWeight: FontWeight.w600,

                  ),),
                  Text(website,style: TextStyle(
                    color: Color(0xFF8692A6),
                    fontSize: SizeConfig.screenwidth*0.028,
                    fontWeight: FontWeight.w600,

                  ),),
                ],
              ),
            ),
            Divider(
              height: 0.001,

              color: Color(0xFF8692A6),

            ),
            Padding(
              padding:  EdgeInsets.only(left: SizeConfig.screenwidth*0.04,right: SizeConfig.screenwidth*0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(price,style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.screenwidth*0.04,
                    fontWeight: FontWeight.w600,

                  ),),
                  Text(percentage,style: TextStyle(
                    color: Color(0xFF28CC84),
                    fontSize: SizeConfig.screenwidth*0.04,
                    fontWeight: FontWeight.w600,

                  ),),
                ],
              ),
            )

          ],
        ),
      ),
    ),
  );
}