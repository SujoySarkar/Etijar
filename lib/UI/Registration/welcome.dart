import 'package:etijar/UI/CustomWidget/onboardingdescription.dart';
import 'package:etijar/UI/CustomWidget/onboardingimage.dart';
import 'package:etijar/UI/CustomWidget/onboardingtitle.dart';
import 'package:etijar/UI/CustomWidget/pagedetails.dart';
import 'package:etijar/UI/CustomWidget/pagetitle.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/CustomWidget/steptextwidget.dart';
import 'package:etijar/UI/CustomWidget/textfield.dart';
import 'package:etijar/UI/CustomWidget/textfieldtitle.dart';
import 'package:etijar/UI/CustomWidget/textfielswithsuffixicon.dart';
import 'package:etijar/UI/Dashboard/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../allstrings.dart';
import '../sizeconfig.dart';
import 'kyc4.dart';

class Welcome extends StatelessWidget {

  double space_between_title_textField = SizeConfig.screenwidth * 0.02;
  double itemspace = SizeConfig.screenwidth * 0.035;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  OnboardingImage(
                      "images/welcomeimage.png"),
                  OnboardingTitle(StringData.welcometoetijar),
                  SizedBox(
                    height: SizeConfig.screenwidth * 0.04,
                  ),
                  OnboardingDscription(
                      StringData.welcometoetijardes),
                  OnboardingDscription(
                      StringData.welcometoetijardestwo),
                  OnboardingDscription(
                      StringData.welcometoetijardesthree),
                  OnboardingDscription(
                      StringData.welcometoetijardesfour),
                  SizedBox(
                    height: SizeConfig.screenwidth * 0.13,
                  ),
                  CustomButton("Go to Dashboard", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));
                  }),





                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
