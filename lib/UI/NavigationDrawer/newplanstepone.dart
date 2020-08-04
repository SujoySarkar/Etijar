import 'package:etijar/UI/CustomWidget/pagedetails.dart';
import 'package:etijar/UI/CustomWidget/pagetitle.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/CustomWidget/steptextwidget.dart';
import 'package:etijar/UI/CustomWidget/textfield.dart';
import 'package:etijar/UI/CustomWidget/textfieldtitle.dart';
import 'package:etijar/UI/CustomWidget/textfielswithsuffixicon.dart';
import 'package:etijar/UI/Registration/kyc3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../sizeconfig.dart';
import 'newplansteptwo.dart';

class NewPlanStepOne extends StatelessWidget {
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
                      width: SizeConfig.screenwidth * 0.2,
                      height: SizeConfig.screenheight * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Material(
                          color: Colors.transparent,
                          borderRadius:
                          BorderRadius.all(Radius.circular(5)),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            splashColor: Colors.white,
                            borderRadius:
                            BorderRadius.all(Radius.circular(5)),
                            child: Container(
                              width: SizeConfig.screenwidth * 0.2,
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.arrow_back_ios,
                                    color: Color(0xFF8692A6),
                                    size: SizeConfig.screenwidth * 0.05,
                                  ),
                                  SizedBox(
                                    width: space_between_title_textField,
                                  ),
                                  Text(
                                    "Back",
                                    style: TextStyle(
                                        color: Color(0xFF8692A6),
                                        fontWeight: FontWeight.w500,
                                        fontSize:
                                        SizeConfig.screenwidth * 0.043),
                                  )
                                ],
                              ),
                            ),
                          ))),
                  SizedBox(
                    height: SizeConfig.screenwidth * 0.1,
                  ),
                  PageTitle("New Savings Plan"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  PageDetails("For the purpose if industry regularion, your details are needed."),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  StepTextWidget("01 of 03 (Plan Information)"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  Divider(
                    color: Colors.white24,
                  ),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  TextFieldTitle("Plan Name"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  CustomTextField("What would you like to call this plan"),
                  SizedBox(
                    height: itemspace,
                  ),
                  TextFieldTitle("Renewal Type"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  CustomTextFieldWithSuffixIcon("Please Select",Icons.arrow_drop_down,Color(0xFFDADADA)),
                  SizedBox(
                    height: SizeConfig.screenwidth * 0.47,
                  ),
                  CustomButton("Next", (){
                    Navigator.push(context, CupertinoPageRoute(builder: (context)=>NewPlanStepTwo()));
                  }),
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
