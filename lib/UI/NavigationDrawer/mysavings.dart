import 'package:etijar/UI/CustomWidget/onboardingdescription.dart';
import 'package:etijar/UI/CustomWidget/onboardingtitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../sizeconfig.dart';
import 'newplanstepone.dart';

class MySavings extends StatelessWidget {
  double space_between_title_textField = SizeConfig.screenwidth * 0.025;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("My Savings",style: TextStyle(fontSize: SizeConfig.screenwidth*0.045),),

          flexibleSpace: Container(

            child: Padding(
              padding: EdgeInsets.only(left: SizeConfig.screenwidth*0.05,right: SizeConfig.screenwidth*0.05,),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Divider(color: Color(0xFF8692A6),)),
            ),
          )

      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, CupertinoPageRoute(builder: (context)=>NewPlanStepOne()));
      },child: Icon(Icons.add),),
      backgroundColor: ColorData.onboardingbackground  ,
      body: Container(
        width: SizeConfig.screenwidth,
        height: SizeConfig.screenheight,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.png"), fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(SizeConfig.screenwidth * 0.05),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: SizeConfig.screenwidth,
                  height: SizeConfig.safeBlockVertical*16,
                  decoration: BoxDecoration(
                    color: Color(0xFF1F3151),
                    borderRadius: BorderRadius.all(Radius.circular(SizeConfig.screenwidth*0.02),),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(SizeConfig.screenwidth*0.04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("TOTAL PORTFOLIO BALANCE",style: TextStyle(
                          color: Color(0xFF478BFF),
                          fontSize: SizeConfig.screenwidth*0.028,
                          fontWeight: FontWeight.w500,

                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("\$0.00",style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.screenwidth*0.055,
                              fontWeight: FontWeight.w500,

                            ),),
                            Container(
                              height: SizeConfig.screenheight*0.053,
                              width: SizeConfig.screenwidth*0.35,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white30),
                                borderRadius: BorderRadius.all(Radius.circular(SizeConfig.screenwidth*0.01),),
                              ),
                              child: Center(child: Text("Deposit Money",style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.screenwidth*0.028,
                                fontWeight: FontWeight.w500,

                              )),),
                            ),

                          ],
                        ),
                        RichText(text: TextSpan(
                            text: "Interest P.A:",style: TextStyle(
                          color: Color(0xFF8692A6),
                          fontSize: SizeConfig.screenwidth*0.028,
                          fontWeight: FontWeight.w500,

                        ),
                            children: [
                              TextSpan(
                                text: "\$0.00(0%)",style: TextStyle(
                                color: Color(0xFF28CC84),
                                fontSize: SizeConfig.screenwidth*0.028,
                                fontWeight: FontWeight.w500,

                              ),
                              )
                            ]

                        ),),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: space_between_title_textField,),
                Divider(
                  color: Color(0xFF8692A6),
                ),
                SizedBox(height: space_between_title_textField,),
                Text("My Plans",style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.screenwidth*0.04,
                  fontWeight: FontWeight.w500,

                ),),
                SizedBox(
                  height: SizeConfig.screenwidth * 0.2,
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: SizeConfig.screenheight/9,
                        width: SizeConfig.screenwidth/4.5,
                        child: Image.asset("images/calendar.png",fit: BoxFit.fill,),

                      ),
                      SizedBox(
                        height: SizeConfig.screenwidth * 0.04,
                      ),
                      OnboardingTitle("Nothing Here!"),
                      SizedBox(
                        height: SizeConfig.screenwidth * 0.025,
                      ),
                      OnboardingDscription(
                          "You haven’t created any savings"),
                      OnboardingDscription(
                          "plan yet."),
                    ],
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
