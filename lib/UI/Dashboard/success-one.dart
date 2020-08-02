import 'package:etijar/UI/CustomWidget/draweritem.dart';
import 'package:etijar/UI/CustomWidget/onboardingdescription.dart';
import 'package:etijar/UI/CustomWidget/onboardingimage.dart';
import 'package:etijar/UI/CustomWidget/onboardingtitle.dart';
import 'package:etijar/UI/CustomWidget/reusableCategories.dart';
import 'package:etijar/UI/CustomWidget/reusableStocks.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/allstrings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../sizeconfig.dart';
import 'confirm.dart';

class FirstSuccess extends StatelessWidget {
  double space_between_title_textField = SizeConfig.screenwidth * 0.025;
  double itemspace = SizeConfig.screenwidth * 0.035;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorData.onboardingbackground,
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

              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: SizeConfig.screenwidth*0.1,),
                OnboardingImage(
                    "images/successone.png"),
                SizedBox(height: SizeConfig.screenwidth*0.1,),
                OnboardingTitle("Success!"),
                SizedBox(
                  height: SizeConfig.screenwidth * 0.04,
                ),
                OnboardingDscription(
                    "Your stock purchase was"),
                OnboardingDscription(
                    "successful!"),
                SizedBox(
                  height: SizeConfig.screenwidth * 0.2,
                ),
                CustomButton("Go to Dashboard", (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));
                }),
                SizedBox(
                  height: SizeConfig.screenwidth * 0.04,
                ),
                Text(
                  "View More Stocks",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.screenwidth*0.042),
                )





              ],
            ),
            ),
          ),
        ),
      ),
    );
  }
}
