import 'package:etijar/UI/CustomWidget/onboardingdescription.dart';
import 'package:etijar/UI/CustomWidget/onboardingimage.dart';
import 'package:etijar/UI/CustomWidget/onboardingtitle.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/NavigationDrawer/popularstocks.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../sizeconfig.dart';

class Watchlist extends StatelessWidget {
  double space_between_title_textField = SizeConfig.screenwidth * 0.025;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("My Watchlist",style: TextStyle(fontSize: SizeConfig.screenwidth*0.045),),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: (){})
          ],
      ),
      backgroundColor: ColorData.onboardingbackground  ,
      body: Container(
        width: SizeConfig.screenwidth,
        height: SizeConfig.screenheight,
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.screenwidth * 0.05),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  OnboardingImage(
                      "images/watchlist.png"),
                  OnboardingTitle("Empty!"),
                  SizedBox(
                    height: SizeConfig.screenwidth * 0.04,
                  ),
                  OnboardingDscription(
                     "You haven’t added any stock to"),
                  OnboardingDscription(
                      "your watchlist yet."),

                  SizedBox(
                    height: SizeConfig.screenwidth * 0.13,
                  ),
                  CustomButton("Browse Stocks", (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PopularStocks()));
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
