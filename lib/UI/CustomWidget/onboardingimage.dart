import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sizeconfig.dart';

Widget OnboardingImage(String assetimage){
  return Container(
    width: SizeConfig.screenwidth,
    child: Image.asset(assetimage,fit: BoxFit.fill,),
  );
}