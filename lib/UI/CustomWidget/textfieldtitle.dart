import 'package:flutter/material.dart';

import '../sizeconfig.dart';

Widget TextFieldTitle(String title){
  return Text(title,style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w300,
      fontSize: SizeConfig.screenwidth*0.034),);
}