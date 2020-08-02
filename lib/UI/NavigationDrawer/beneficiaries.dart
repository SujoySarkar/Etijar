import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../sizeconfig.dart';

class Beneficiaries extends StatelessWidget {
  double space_between_title_textField = SizeConfig.screenwidth * 0.025;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("Beneficiaries",style: TextStyle(fontSize: SizeConfig.screenwidth*0.045),),

          flexibleSpace: Container(

            child: Padding(
              padding: EdgeInsets.only(left: SizeConfig.screenwidth*0.05,right: SizeConfig.screenwidth*0.05,),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Divider(color: Color(0xFF8692A6),)),
            ),
          )

      ),
      backgroundColor: ColorData.onboardingbackground  ,
      body: Container(
        width: SizeConfig.screenwidth,
        height: SizeConfig.screenheight,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"), fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.screenwidth * 0.05),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Tope Alabi",style: TextStyle(
                    color: Color(0xFF8692A6),
                    fontSize: SizeConfig.screenwidth*0.034,
                    fontWeight: FontWeight.w500,

                  ),),
                  SizedBox(height: space_between_title_textField,),
                  Text("012838299. Access bank",style: TextStyle(fontSize: SizeConfig.screenwidth*0.042,color: Colors.white,fontWeight: FontWeight.w500),),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),
                  SizedBox(height: space_between_title_textField,),
                  Text("103938476. Citi Bank",style: TextStyle(
                    color: Color(0xFF8692A6),
                    fontSize: SizeConfig.screenwidth*0.034,
                    fontWeight: FontWeight.w500,

                  ),),
                  SizedBox(height: space_between_title_textField,),
                  Text("Quadri Imran",style: TextStyle(fontSize: SizeConfig.screenwidth*0.042,color: Colors.white,fontWeight: FontWeight.w500),),
                  Divider(
                    color: Color(0xFF8692A6),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
