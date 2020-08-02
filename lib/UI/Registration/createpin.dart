import 'package:etijar/UI/CustomWidget/pagedetails.dart';
import 'package:etijar/UI/CustomWidget/pagetitle.dart';
import 'package:etijar/UI/CustomWidget/pintextfield.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/CustomWidget/textfieldtitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../allstrings.dart';
import '../sizeconfig.dart';
import 'confirmpin.dart';

class CreatePin extends StatelessWidget {
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

                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: SizeConfig.screenwidth * 0.18,
                    width: SizeConfig.screenwidth * 0.18,
                    child: Image.asset("images/splashlogo.png"),
                  ),
                  SizedBox(
                    height: SizeConfig.screenwidth * 0.05,
                  ),
                  PageTitle(StringData.transactionpin),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  PageDetails(StringData.transactionpindetails),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  Divider(
                    color: Colors.white24,
                  ),
                  SizedBox(
                    height: space_between_title_textField,
                  ),

                  Center(
                    child: Container(
                      width: SizeConfig.screenwidth/1.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: <Widget>[
                          TextFieldTitle("Your Pin"),
                          SizedBox(
                            height: space_between_title_textField,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              PinTextField(),
                              PinTextField(),
                              PinTextField(),
                              PinTextField(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: itemspace,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.lock_open,size: SizeConfig.screenwidth*0.035,color: Color(0xFF8692A6,),),
                      SizedBox(width: SizeConfig.screenwidth*0.02,),
                      Text("Your info is safely secured",style: TextStyle(
                          color: Color(0xFF8692A6),
                          fontWeight: FontWeight.w300,
                          fontSize: SizeConfig.screenwidth*0.03),),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenwidth*0.2,
                  ),
                  CustomButton("Continue", (){
                    Navigator.push(context, CupertinoPageRoute(builder: (context)=>ConfirmPin()));
                  })





                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
