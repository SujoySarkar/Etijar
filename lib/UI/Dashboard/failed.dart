import 'package:etijar/UI/CustomWidget/onboardingdescription.dart';
import 'package:etijar/UI/CustomWidget/onboardingimage.dart';
import 'package:etijar/UI/CustomWidget/onboardingtitle.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../sizeconfig.dart';
import 'dashboard.dart';

class Failed extends StatelessWidget {
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

                  OnboardingImage("images/failed.png"),
                  OnboardingTitle("Failed"),
                  SizedBox(
                    height: SizeConfig.screenwidth * 0.04,
                  ),
                  OnboardingDscription(
                      "Your transaction wasn’t"),
                  OnboardingDscription(
                      "approved. Please check details."),

                  SizedBox(
                    height: SizeConfig.screenwidth * 0.13,
                  ),
                  CustomButton("Return", (){
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
