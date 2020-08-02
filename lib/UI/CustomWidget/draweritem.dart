import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sizeconfig.dart';

Widget DrawerItem(IconData icon, String name){
  return Container(
      height: SizeConfig.safeBlockVertical*5.5,
      width: SizeConfig.screenwidth,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: InkWell(
            onTap: (){},
            splashColor: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            child: Center(
              child: Row(
                children: <Widget>[
                  Icon(icon,color: Color(0xFFC5D0E2),size: SizeConfig.screenwidth*0.05,),
                  SizedBox(width: SizeConfig.screenwidth*0.05,),
                  Text(name,style: TextStyle(color: Color(0xFFC5D0E2),fontWeight: FontWeight.w500,fontSize: SizeConfig.screenwidth*0.04),),

                ],
              ),
            ),
          )));
}

