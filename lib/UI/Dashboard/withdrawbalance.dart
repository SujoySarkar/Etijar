import 'package:etijar/UI/CustomWidget/pagedetails.dart';
import 'package:etijar/UI/CustomWidget/pagetitle.dart';
import 'package:etijar/UI/CustomWidget/pintextfield.dart';
import 'package:etijar/UI/CustomWidget/ripplebutton.dart';
import 'package:etijar/UI/CustomWidget/steptextwidget.dart';
import 'package:etijar/UI/CustomWidget/textfield.dart';
import 'package:etijar/UI/CustomWidget/textfieldtitle.dart';
import 'package:etijar/UI/CustomWidget/textfielswithsuffixicon.dart';
import 'package:etijar/UI/Dashboard/failed.dart';
import 'package:flutter/material.dart';

import '../allcolors.dart';
import '../sizeconfig.dart';

class Withdrawbalance extends StatelessWidget {
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
                  StepTextWidget("Bank Details"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  Divider(
                    color: Colors.white24,
                  ),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  TextFieldTitle("Amount to Withdraw"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  CustomTextField("Enter Amount"),
                  SizedBox(
                    height: itemspace,
                  ),
                  TextFieldTitle("Destination Bank"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  CustomTextFieldWithSuffixIcon("Please Select",Icons.arrow_drop_down,Color(0xFFDADADA)),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  TextFieldTitle("Account Number"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  CustomTextField("Destination Account"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  TextFieldTitle("Message (optional)"),
                  SizedBox(
                    height: space_between_title_textField,
                  ),
                  Container(
                    width: SizeConfig.screenwidth,
                    height: SizeConfig.screenheight/7,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF8692A6),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(SizeConfig.screenwidth * 0.01),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.screenwidth * 0.03,
                          right: SizeConfig.screenwidth * 0.03),
                      child: Center(
                        child: TextField(

                          style: TextStyle(
                              color: Color(0xFFCDCDCD),
                              fontSize: SizeConfig.screenwidth * 0.034),
                          decoration: new InputDecoration.collapsed(
                            hintText: "Your message...",
                            hintStyle: TextStyle(
                                color: Color(0xFFCDCDCD),
                                fontSize: SizeConfig.screenwidth * 0.034),
                          ),
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: itemspace,
                  ),
                  CustomButton("Save & Continue", (){

                    showModalBottomSheet(context: context,builder: (context){
                      return FittedBox(
                        child: Container(
                            height: SizeConfig.screenheight/2.2,
                            width: SizeConfig.screenwidth,
                            color: ColorData.onboardingbackground,
                            child: Padding(
                              padding:  EdgeInsets.only(left: SizeConfig.screenwidth*0.04,right: SizeConfig.screenwidth*0.04),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: SizeConfig.screenwidth * 0.05,
                                  ),
                                  Text("Confirm Details",style: TextStyle(
                                      color: Color(0xFF8692A6),
                                      fontWeight: FontWeight.w500,
                                      fontSize: SizeConfig.screenwidth * 0.040),),
                                  SizedBox(
                                    height: space_between_title_textField,
                                  ),
                                  Divider(
                                    color: Color(0xFF8692A6),
                                  ),
                                  Expanded(
                                    child: Container(

                                      child: Padding(
                                        padding:  EdgeInsets.only(left: SizeConfig.screenwidth*0.05,right: SizeConfig.screenwidth*0.05,bottom: SizeConfig.screenwidth*0.05),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                          children: <Widget>[

                                         Container(
                                           height: SizeConfig.screenheight/13,
                                           child: Column(
                                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                                             children: <Widget>[
                                               Row(
                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                 children: <Widget>[
                                                   Text("Account Name",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: SizeConfig.screenwidth*0.032),),
                                                   Text("Bank Details",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: SizeConfig.screenwidth*0.032),)
                                                 ],
                                               ),
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                 children: <Widget>[
                                                   Text("Abdulrahman Tijani",style: TextStyle(color: Color(0xFFCDCDCD),fontWeight: FontWeight.w500,fontSize: SizeConfig.screenwidth*0.032),),
                                                   Text("O737235391",style: TextStyle(color: Color(0xFFCDCDCD),fontWeight: FontWeight.w500,fontSize: SizeConfig.screenwidth*0.032),)
                                                 ],
                                               ),
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                 children: <Widget>[
                                                   Text("Hassan",style: TextStyle(color: Color(0xFFCDCDCD),fontWeight: FontWeight.w500,fontSize: SizeConfig.screenwidth*0.032),),
                                                   Text("FCMB",style: TextStyle(color: Color(0xFFCDCDCD),fontWeight: FontWeight.w500,fontSize: SizeConfig.screenwidth*0.032),)
                                                 ],
                                               ),
                                             ],
                                           ),
                                         ),

                                         Divider(
                                              color: Color(0xFF8692A6),
                                            ),
                                         Container(
                                              height: SizeConfig.screenheight/13,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: <Widget>[
                                                  Center(child: Text("Amount",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: SizeConfig.screenwidth*0.032),)),
                                                  Center(child: Text("\$20000",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: SizeConfig.screenwidth*0.046),)),

                                                ],
                                              ),
                                            ),
                                         Divider(
                                              color: Color(0xFF8692A6),
                                            ),
                                         Text("Add As Beneficiary",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: SizeConfig.screenwidth*0.032),),
                                            CustomButton("Continue", (){


                                              showModalBottomSheet(context: context,builder: (context){
                                                return FittedBox(
                                                  child: Container(
                                                      height: SizeConfig.screenheight/2.8,
                                                      width: SizeConfig.screenwidth,
                                                      color: ColorData.onboardingbackground,
                                                      child: Column(
                                                        children: <Widget>[
                                                          SizedBox(
                                                            height: SizeConfig.screenwidth * 0.05,
                                                          ),
                                                          Text("Enter Transaction Pin",style: TextStyle(
                                                              color: Color(0xFF8692A6),
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: SizeConfig.screenwidth * 0.040),),
                                                          SizedBox(
                                                            height: space_between_title_textField,
                                                          ),
                                                          Padding(
                                                            padding:  EdgeInsets.only(left: SizeConfig.screenwidth*0.04,right: SizeConfig.screenwidth*0.04),

                                                            child: Divider(
                                                              color: Color(0xFF8692A6),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(

                                                              child: Padding(
                                                                padding:  EdgeInsets.only(left: SizeConfig.screenwidth*0.05,right: SizeConfig.screenwidth*0.05,bottom: SizeConfig.screenwidth*0.05),
                                                                child: Column(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                  children: <Widget>[

                                                                    Center(
                                                                      child: Container(
                                                                        width: SizeConfig.screenwidth/1.8,
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
                                                                    CustomButton("Continue", (){

                                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Failed()));
                                                                    }),

                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      )
                                                  ),
                                                );
                                              });
                                            }),

                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                        ),
                      );
                    });

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
