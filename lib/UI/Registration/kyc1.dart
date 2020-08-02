import 'package:etijar/UI/CustomWidget/pagedetails.dart';
import 'package:etijar/UI/CustomWidget/pagetitle.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/CustomWidget/steptextwidget.dart';
import 'package:etijar/UI/CustomWidget/textfield.dart';
import 'package:etijar/UI/CustomWidget/textfieldtitle.dart';
import 'package:etijar/UI/CustomWidget/textfielswithsuffixicon.dart';
import 'package:etijar/UI/Registration/kyc2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../allstrings.dart';
import '../sizeconfig.dart';

class KycOne extends StatelessWidget {
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
                  SizedBox(
                    height: SizeConfig.screenwidth * 0.1,
                  ),
                  PageTitle(StringData.kyc1title),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  PageDetails(StringData.kyc1descrition),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  StepTextWidget(StringData.step1),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  Divider(
                    color: Colors.white24,
                  ),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  TextFieldTitle("Your Address"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  CustomTextField("Please enter address"),
                  SizedBox(
                    height: itemspace,
                  ),
                  TextFieldTitle("Country of Residence"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  CustomTextFieldWithSuffixIcon("Please Select",Icons.arrow_drop_down,Color(0xFFDADADA)),
                  SizedBox(
                    height: itemspace,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(

                        width: SizeConfig.screenwidth/2.4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TextFieldTitle("Date of Birth"),
                            SizedBox(
                              height: space_between_title_textField,
                            ),
                            CustomTextFieldWithSuffixIcon("Please Select",Icons.calendar_today,Colors.green),
                            SizedBox(
                              height: itemspace,
                            ),
                          ],
                        ),
                      ),
                      Container(

                        width: SizeConfig.screenwidth/2.4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TextFieldTitle("Gender"),
                            SizedBox(
                              height: space_between_title_textField,
                            ),
                            CustomTextFieldWithSuffixIcon("Please Select",Icons.arrow_drop_down,Color(0xFFDADADA)),
                            SizedBox(
                              height: itemspace,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.screenwidth * 0.1,
                  ),
                  CustomButton("Save & Continue", (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>KycTwo()));}),
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


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
